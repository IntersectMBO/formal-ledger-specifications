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
d_Credential_44 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_80 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_80 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_90 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_90 ~v0 = du_DecEq'45'GovRole_90
du_DecEq'45'GovRole_90 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_90
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_880
-- _.GovActionState
d_GovActionState_158 a0 = ()
-- _.GovProposal
d_GovProposal_164 a0 = ()
-- _.GovVote
d_GovVote_168 a0 = ()
-- _.HasPParams
d_HasPParams_196 a0 a1 a2 = ()
-- _.HasUTxO
d_HasUTxO_202 a0 a1 a2 = ()
-- _.PParams
d_PParams_292 a0 = ()
-- _.PParamsOf
d_PParamsOf_296 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_296 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- _.ScriptHash
d_ScriptHash_350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_350 = erased
-- _.Slot
d_Slot_394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_394 = erased
-- _.Tx
d_Tx_422 a0 = ()
-- _.TxBody
d_TxBody_424 a0 = ()
-- _.UTxOOf
d_UTxOOf_440 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2974 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_440 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2982 (coe v0)
-- _.Voter
d_Voter_462 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_462 = erased
-- _.epoch
d_epoch_496 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_496 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v0))
-- _.GovActionState.action
d_action_740 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776
d_action_740 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_874 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_742 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856 ->
  AgdaAny
d_expiresIn_742 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_872 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_744 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856 ->
  AgdaAny
d_prevAction_744 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_876 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_746 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_746 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_870 (coe v0)
-- _.GovActionState.votes
d_votes_748 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_748 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_868 (coe v0)
-- _.GovProposal.action
d_action_784 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776
d_action_784 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_844 (coe v0)
-- _.GovProposal.anchor
d_anchor_786 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_748
d_anchor_786 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_854 (coe v0)
-- _.GovProposal.deposit
d_deposit_788 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 -> Integer
d_deposit_788 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_850 (coe v0)
-- _.GovProposal.policy
d_policy_790 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  Maybe AgdaAny
d_policy_790 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_848 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_792 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 -> AgdaAny
d_prevAction_792 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_846 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_794 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_794 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_852 (coe v0)
-- _.GovVote.anchor
d_anchor_806 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_748
d_anchor_806 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_828 (coe v0)
-- _.GovVote.gid
d_gid_808 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_808 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_822 (coe v0)
-- _.GovVote.vote
d_vote_810 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_804
d_vote_810 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_826 (coe v0)
-- _.GovVote.voter
d_voter_812 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_812 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_824 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_838 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_842 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_844 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_846 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_928 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_936 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2974 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_936 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2982 (coe v0)
-- _.PParams.Emax
d_Emax_1052 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_Emax_1052 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_378 (coe v0)
-- _.PParams.a
d_a_1054 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_a_1054 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_350 (coe v0)
-- _.PParams.a0
d_a0_1056 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1056 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_382 (coe v0)
-- _.PParams.b
d_b_1058 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_b_1058 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_352 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1060 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMaxTermLength_1060 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_394 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1062 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMinSize_1062 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_392 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1064 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_coinsPerUTxOByte_1064 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1066 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_collateralPercentage_1066 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384 (coe v0)
-- _.PParams.costmdls
d_costmdls_1068 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_costmdls_1068 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_386 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1070 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_drepActivity_1070 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_402 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1072 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_drepDeposit_1072 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_400 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1074 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198
d_drepThresholds_1074 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_390 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1076 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionDeposit_1076 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_398 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1078 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionLifetime_1078 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_396 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1080 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_keyDeposit_1080 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_354 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1082 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxBlockExUnits_1082 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_342 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1084 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxBlockSize_1084 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_334 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1086 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxCollateralInputs_1086 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_346 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1088 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxHeaderSize_1088 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_338 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1090 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerBlock_1090 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_370 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1092 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerTx_1092 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1094 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxTxExUnits_1094 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_340 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1096 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxTxSize_1096 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_336 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1098 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxValSize_1098 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_344 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1100 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1100 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_366
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1102 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_minUTxOValue_1102 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_376 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1104 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1104 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_358 (coe v0)
-- _.PParams.nopt
d_nopt_1106 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_nopt_1106 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_380 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1108 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_poolDeposit_1108 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_356 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1110 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240
d_poolThresholds_1110 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_388 (coe v0)
-- _.PParams.prices
d_prices_1112 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_prices_1112 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_364 (coe v0)
-- _.PParams.pv
d_pv_1114 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1114 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_348 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1116 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1116 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_374 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1118 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_refScriptCostStride_1118 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_372 (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1120 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1120 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_360 (coe v0)
-- _.Tx.body
d_body_1534 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988
d_body_1534 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v0)
-- _.Tx.isValid
d_isValid_1536 :: MAlonzo.Code.Ledger.Transaction.T_Tx_3180 -> Bool
d_isValid_1536 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_3194 (coe v0)
-- _.Tx.txAD
d_txAD_1538 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 -> Maybe AgdaAny
d_txAD_1538 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_3196 (coe v0)
-- _.Tx.wits
d_wits_1540 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3160
d_wits_1540 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_3192 (coe v0)
-- _.TxBody.collateral
d_collateral_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1544 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_3064 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1546 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Maybe Integer
d_curTreasury_1546 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_3058 (coe v0)
-- _.TxBody.mint
d_mint_1548 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> AgdaAny
d_mint_1548 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_3038 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1550 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1550 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_3032 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1552 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> [AgdaAny]
d_reqSigHash_1552 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_3066 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Maybe AgdaAny
d_scriptIntHash_1554 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_3068 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1556 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Maybe AgdaAny
d_txADhash_1556 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_3054 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Maybe AgdaAny
d_txNetworkId_1558 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_3056 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1560 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_998]
d_txcerts_1560 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_3042 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1562 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Integer
d_txdonation_1562 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_3050 (coe v0)
-- _.TxBody.txfee
d_txfee_1564 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Integer
d_txfee_1564 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_3036 (coe v0)
-- _.TxBody.txid
d_txid_1566 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> AgdaAny
d_txid_1566 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_3062 (coe v0)
-- _.TxBody.txins
d_txins_1568 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1568 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_3030 (coe v0)
-- _.TxBody.txouts
d_txouts_1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1570 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_3034 (coe v0)
-- _.TxBody.txprop
d_txprop_1572 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830]
d_txprop_1572 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_3048 (coe v0)
-- _.TxBody.txsize
d_txsize_1574 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Integer
d_txsize_1574 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_3060 (coe v0)
-- _.TxBody.txup
d_txup_1576 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1576 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_3052 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1578 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1578 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_3040 (coe v0)
-- _.TxBody.txvote
d_txvote_1580 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812]
d_txvote_1580 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_3046 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1582 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1582 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_3044 (coe v0)
-- Ledger.Ledger._.EnactState
d_EnactState_1662 a0 a1 = ()
-- Ledger.Ledger._.EnactState.cc
d_cc_1706 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1706 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_930 (coe v0)
-- Ledger.Ledger._.EnactState.constitution
d_constitution_1708 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1708 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_932 (coe v0)
-- Ledger.Ledger._.EnactState.pparams
d_pparams_1710 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1710 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_936 (coe v0)
-- Ledger.Ledger._.EnactState.pv
d_pv_1712 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1712 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_934 (coe v0)
-- Ledger.Ledger._.EnactState.withdrawals
d_withdrawals_1714 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1714 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_938 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1724 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_2190 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1724 = erased
-- Ledger.Ledger._.GovState
d_GovState_1736 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 -> ()
d_GovState_1736 = erased
-- Ledger.Ledger._.GovStateOf
d_GovStateOf_1738 ::
  MAlonzo.Code.Ledger.Gov.T_HasGovState_2176 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1738 v0
  = coe MAlonzo.Code.Ledger.Gov.d_GovStateOf_2184 (coe v0)
-- Ledger.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1740 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'GovEnv_1740 ~v0 ~v1 = du_HasCast'45'GovEnv_1740
du_HasCast'45'GovEnv_1740 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'GovEnv_1740
  = coe MAlonzo.Code.Ledger.Gov.du_HasCast'45'GovEnv_2220
-- Ledger.Ledger._.HasGovState
d_HasGovState_1742 a0 a1 a2 a3 = ()
-- Ledger.Ledger._.HasGovState.GovStateOf
d_GovStateOf_1842 ::
  MAlonzo.Code.Ledger.Gov.T_HasGovState_2176 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1842 v0
  = coe MAlonzo.Code.Ledger.Gov.d_GovStateOf_2184 (coe v0)
-- Ledger.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_1862 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'UTxOEnv_1862 ~v0 ~v1 = du_HasCast'45'UTxOEnv_1862
du_HasCast'45'UTxOEnv_1862 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'UTxOEnv_1862
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCast'45'UTxOEnv_2328
-- Ledger.Ledger._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_1870 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_924
d_HasDeposits'45'UTxOState_1870 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_1870
du_HasDeposits'45'UTxOState_1870 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_924
du_HasDeposits'45'UTxOState_1870
  = coe MAlonzo.Code.Ledger.Utxo.du_HasDeposits'45'UTxOState_2324
-- Ledger.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_1874 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2974
d_HasUTxO'45'UTxOState_1874 ~v0 ~v1 = du_HasUTxO'45'UTxOState_1874
du_HasUTxO'45'UTxOState_1874 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2974
du_HasUTxO'45'UTxOState_1874
  = coe MAlonzo.Code.Ledger.Utxo.du_HasUTxO'45'UTxOState_2326
-- Ledger.Ledger._.HasUTxOState
d_HasUTxOState_1876 a0 a1 a2 a3 = ()
-- Ledger.Ledger._.UTxOState
d_UTxOState_1894 a0 a1 = ()
-- Ledger.Ledger._.UTxOStateOf
d_UTxOStateOf_1896 ::
  MAlonzo.Code.Ledger.Utxo.T_HasUTxOState_2310 ->
  AgdaAny -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286
d_UTxOStateOf_1896 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_UTxOStateOf_2318 (coe v0)
-- Ledger.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2000 ::
  MAlonzo.Code.Ledger.Utxo.T_HasUTxOState_2310 ->
  AgdaAny -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286
d_UTxOStateOf_2000 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_UTxOStateOf_2318 (coe v0)
-- Ledger.Ledger._.UTxOState.deposits
d_deposits_2012 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2012 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2300 (coe v0)
-- Ledger.Ledger._.UTxOState.donations
d_donations_2014 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 -> Integer
d_donations_2014 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2302 (coe v0)
-- Ledger.Ledger._.UTxOState.fees
d_fees_2016 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 -> Integer
d_fees_2016 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2298 (coe v0)
-- Ledger.Ledger._.UTxOState.utxo
d_utxo_2018 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2018 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2296 (coe v0)
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2056 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1034 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1192 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_998] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1192 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2118 = erased
-- Ledger.Ledger._.CertState
d_CertState_2138 a0 a1 = ()
-- Ledger.Ledger._.CertStateOf
d_CertStateOf_2140 ::
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1212 ->
  AgdaAny -> MAlonzo.Code.Ledger.Certs.T_CertState_1192
d_CertStateOf_2140 v0
  = coe MAlonzo.Code.Ledger.Certs.d_CertStateOf_1220 (coe v0)
-- Ledger.Ledger._.DepositsOf
d_DepositsOf_2170 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_924 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2170 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DepositsOf_932 (coe v0)
-- Ledger.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'CertEnv_2186 ~v0 ~v1 = du_HasCast'45'CertEnv_2186
du_HasCast'45'CertEnv_2186 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'CertEnv_2186
  = coe MAlonzo.Code.Ledger.Certs.du_HasCast'45'CertEnv_1262
-- Ledger.Ledger._.HasCertState
d_HasCertState_2198 a0 a1 a2 a3 = ()
-- Ledger.Ledger._.HasDeposits
d_HasDeposits_2212 a0 a1 a2 a3 = ()
-- Ledger.Ledger._.CertState.dState
d_dState_2332 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_1192 ->
  MAlonzo.Code.Ledger.Certs.T_DState_1076
d_dState_2332 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_1200 (coe v0)
-- Ledger.Ledger._.CertState.gState
d_gState_2334 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_1192 ->
  MAlonzo.Code.Ledger.Certs.T_GState_1160
d_gState_2334 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_1204 (coe v0)
-- Ledger.Ledger._.CertState.pState
d_pState_2336 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_1192 ->
  MAlonzo.Code.Ledger.Certs.T_PState_1132
d_pState_2336 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_1202 (coe v0)
-- Ledger.Ledger._.HasCertState.CertStateOf
d_CertStateOf_2390 ::
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1212 ->
  AgdaAny -> MAlonzo.Code.Ledger.Certs.T_CertState_1192
d_CertStateOf_2390 v0
  = coe MAlonzo.Code.Ledger.Certs.d_CertStateOf_1220 (coe v0)
-- Ledger.Ledger._.HasDeposits.DepositsOf
d_DepositsOf_2402 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_924 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2402 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DepositsOf_932 (coe v0)
-- Ledger.Ledger.LEnv
d_LEnv_2442 a0 a1 = ()
data T_LEnv_2442
  = C_LEnv'46'constructor_6567 AgdaAny (Maybe AgdaAny)
                               MAlonzo.Code.Ledger.PParams.T_PParams_262
                               MAlonzo.Code.Ledger.Enact.T_EnactState_918 Integer
-- Ledger.Ledger.LEnv.slot
d_slot_2454 :: T_LEnv_2442 -> AgdaAny
d_slot_2454 v0
  = case coe v0 of
      C_LEnv'46'constructor_6567 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_2456 :: T_LEnv_2442 -> Maybe AgdaAny
d_ppolicy_2456 v0
  = case coe v0 of
      C_LEnv'46'constructor_6567 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_2458 ::
  T_LEnv_2442 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2458 v0
  = case coe v0 of
      C_LEnv'46'constructor_6567 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_2460 ::
  T_LEnv_2442 -> MAlonzo.Code.Ledger.Enact.T_EnactState_918
d_enactState_2460 v0
  = case coe v0 of
      C_LEnv'46'constructor_6567 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_2462 :: T_LEnv_2442 -> Integer
d_treasury_2462 v0
  = case coe v0 of
      C_LEnv'46'constructor_6567 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.HasPParams-LEnv
d_HasPParams'45'LEnv_2464 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408
d_HasPParams'45'LEnv_2464 ~v0 ~v1 = du_HasPParams'45'LEnv_2464
du_HasPParams'45'LEnv_2464 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408
du_HasPParams'45'LEnv_2464
  = coe
      MAlonzo.Code.Ledger.PParams.C_HasPParams'46'constructor_9199
      (coe (\ v0 -> d_pparams_2458 (coe v0)))
-- Ledger.Ledger.LState
d_LState_2466 a0 a1 = ()
data T_LState_2466
  = C_'10214'_'44'_'44'_'10215''737'_2480 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_1192
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_2474 ::
  T_LState_2466 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286
d_utxoSt_2474 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2480 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_2476 ::
  T_LState_2466 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2476 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2480 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_2478 ::
  T_LState_2466 -> MAlonzo.Code.Ledger.Certs.T_CertState_1192
d_certState_2478 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2480 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.HasLState
d_HasLState_2486 a0 a1 a2 a3 = ()
newtype T_HasLState_2486
  = C_HasLState'46'constructor_6963 (AgdaAny -> T_LState_2466)
-- Ledger.Ledger.HasLState.LStateOf
d_LStateOf_2494 :: T_HasLState_2486 -> AgdaAny -> T_LState_2466
d_LStateOf_2494 v0
  = case coe v0 of
      C_HasLState'46'constructor_6963 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger._.LStateOf
d_LStateOf_2498 :: T_HasLState_2486 -> AgdaAny -> T_LState_2466
d_LStateOf_2498 v0 = coe d_LStateOf_2494 (coe v0)
-- Ledger.Ledger.HasUTxOState-LState
d_HasUTxOState'45'LState_2500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Utxo.T_HasUTxOState_2310
d_HasUTxOState'45'LState_2500 ~v0 ~v1
  = du_HasUTxOState'45'LState_2500
du_HasUTxOState'45'LState_2500 ::
  MAlonzo.Code.Ledger.Utxo.T_HasUTxOState_2310
du_HasUTxOState'45'LState_2500
  = coe
      MAlonzo.Code.Ledger.Utxo.C_HasUTxOState'46'constructor_18433
      (coe (\ v0 -> d_utxoSt_2474 (coe v0)))
-- Ledger.Ledger.HasUTxO-LState
d_HasUTxO'45'LState_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2974
d_HasUTxO'45'LState_2502 ~v0 ~v1 = du_HasUTxO'45'LState_2502
du_HasUTxO'45'LState_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2974
du_HasUTxO'45'LState_2502
  = coe
      MAlonzo.Code.Ledger.Transaction.C_HasUTxO'46'constructor_18503
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2982
              (coe MAlonzo.Code.Ledger.Utxo.du_HasUTxO'45'UTxOState_2326)
              (d_utxoSt_2474 (coe v0))))
-- Ledger.Ledger.HasGovState-LState
d_HasGovState'45'LState_2504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Gov.T_HasGovState_2176
d_HasGovState'45'LState_2504 ~v0 ~v1
  = du_HasGovState'45'LState_2504
du_HasGovState'45'LState_2504 ::
  MAlonzo.Code.Ledger.Gov.T_HasGovState_2176
du_HasGovState'45'LState_2504
  = coe
      MAlonzo.Code.Ledger.Gov.C_HasGovState'46'constructor_4425
      (coe (\ v0 -> d_govSt_2476 (coe v0)))
-- Ledger.Ledger.HasCertState-LState
d_HasCertState'45'LState_2506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1212
d_HasCertState'45'LState_2506 ~v0 ~v1
  = du_HasCertState'45'LState_2506
du_HasCertState'45'LState_2506 ::
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1212
du_HasCertState'45'LState_2506
  = coe
      MAlonzo.Code.Ledger.Certs.C_HasCertState'46'constructor_19961
      (coe (\ v0 -> d_certState_2478 (coe v0)))
-- Ledger.Ledger.HasDeposits-LState
d_HasDeposits'45'LState_2508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_924
d_HasDeposits'45'LState_2508 ~v0 ~v1
  = du_HasDeposits'45'LState_2508
du_HasDeposits'45'LState_2508 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_924
du_HasDeposits'45'LState_2508
  = coe
      MAlonzo.Code.Ledger.Certs.C_HasDeposits'46'constructor_2989
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Certs.d_DepositsOf_932
              (coe MAlonzo.Code.Ledger.Utxo.du_HasDeposits'45'UTxOState_2324)
              (d_utxoSt_2474 (coe v0))))
-- Ledger.Ledger.HasCast-LEnv
d_HasCast'45'LEnv_2510 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'LEnv_2510 ~v0 ~v1 = du_HasCast'45'LEnv_2510
du_HasCast'45'LEnv_2510 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'LEnv_2510
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
                                 (2442 :: Integer) (9543913931307211001 :: Integer)
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
                                 (394 :: Integer) (9543913931307211001 :: Integer) "_.Slot"
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
                                    (2442 :: Integer) (9543913931307211001 :: Integer)
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
                                                (350 :: Integer) (9543913931307211001 :: Integer)
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
                                       (2442 :: Integer) (9543913931307211001 :: Integer)
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
                                       (292 :: Integer) (9543913931307211001 :: Integer) "_.PParams"
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
                                          (2442 :: Integer) (9543913931307211001 :: Integer)
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
                                          (1662 :: Integer) (9543913931307211001 :: Integer)
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
                                             (2442 :: Integer) (9543913931307211001 :: Integer)
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
d_HasCast'45'LState_2512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'LState_2512 ~v0 ~v1 = du_HasCast'45'LState_2512
du_HasCast'45'LState_2512 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'LState_2512
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
                                 (2466 :: Integer) (9543913931307211001 :: Integer)
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
                                 (1894 :: Integer) (9543913931307211001 :: Integer)
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
                                    (2466 :: Integer) (9543913931307211001 :: Integer)
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
                                    (1736 :: Integer) (9543913931307211001 :: Integer)
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
                                       (2466 :: Integer) (9543913931307211001 :: Integer)
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
                                       (2138 :: Integer) (9543913931307211001 :: Integer)
                                       "Ledger.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2480))
-- Ledger.Ledger.txgov
d_txgov_2514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2514 ~v0 ~v1 v2 = du_txgov_2514 v2
du_txgov_2514 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2514 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_3048 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_3046 (coe v0)))
-- Ledger.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2564 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1192 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2564 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2564 v0 v2 v3
du_rmOrphanDRepVotes_2564 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1192 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2564 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_go_2580 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1192 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_ifDRepRegistered_2574 = erased
-- Ledger.Ledger._.go
d_go_2580 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1192 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856
d_go_2580 v0 ~v1 v2 ~v3 v4 = du_go_2580 v0 v2 v4
du_go_2580 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1192 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856
du_go_2580 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_5211
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_880)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_732))
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
                          (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v0))))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_548
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1470
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                    (coe
                       MAlonzo.Code.Ledger.Certs.d_dreps_1166
                       (coe MAlonzo.Code.Ledger.Certs.d_gState_1204 (coe v1))))))
         (MAlonzo.Code.Ledger.GovernanceActions.d_votes_868 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_870 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_872 (coe v2))
      (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_874 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_876 (coe v2))
-- Ledger.Ledger.allColdCreds
d_allColdCreds_2584 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_918 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_2584 ~v0 ~v1 v2 v3 = du_allColdCreds_2584 v2 v3
du_allColdCreds_2584 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_918 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_2584 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Enact.du_ccCreds_964
         (coe MAlonzo.Code.Ledger.Enact.d_cc_930 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_892
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_action_874
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2626 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2626
  = C_LEDGER'45'V_2674 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2676 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.txcerts
d_txcerts_2648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_18365 -> [MAlonzo.Code.Ledger.Certs.T_DCert_998]
d_txcerts_2648 ~v0 ~v1 v2 = du_txcerts_2648 v2
du_txcerts_2648 ::
  T_GeneralizeTel_18365 -> [MAlonzo.Code.Ledger.Certs.T_DCert_998]
du_txcerts_2648 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_3042
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3190
         (coe d_'46'generalizedField'45'tx_18341 (coe v0)))
-- Ledger.Ledger._.txid
d_txid_2654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_18365 -> AgdaAny
d_txid_2654 ~v0 ~v1 v2 = du_txid_2654 v2
du_txid_2654 :: T_GeneralizeTel_18365 -> AgdaAny
du_txid_2654 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_3062
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3190
         (coe d_'46'generalizedField'45'tx_18341 (coe v0)))
-- Ledger.Ledger._.txvote
d_txvote_2668 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_18365 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812]
d_txvote_2668 ~v0 ~v1 v2 = du_txvote_2668 v2
du_txvote_2668 ::
  T_GeneralizeTel_18365 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812]
du_txvote_2668 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_3046
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3190
         (coe d_'46'generalizedField'45'tx_18341 (coe v0)))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2670 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_18365 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2670 ~v0 ~v1 v2 = du_txwdrls_2670 v2
du_txwdrls_2670 ::
  T_GeneralizeTel_18365 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2670 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_3044
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3190
         (coe d_'46'generalizedField'45'tx_18341 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_LEnv_2442 ->
  T_LState_2466 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_3180] -> T_LState_2466 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2694 = erased
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_18341 ::
  T_GeneralizeTel_18365 -> MAlonzo.Code.Ledger.Transaction.T_Tx_3180
d_'46'generalizedField'45'tx_18341 v0
  = case coe v0 of
      C_mkGeneralizeTel_18367 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_18343 ::
  T_GeneralizeTel_18365 -> MAlonzo.Code.Ledger.Certs.T_CertState_1192
d_'46'generalizedField'45'certState_18343 v0
  = case coe v0 of
      C_mkGeneralizeTel_18367 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_18345 ::
  T_GeneralizeTel_18365 -> AgdaAny
d_'46'generalizedField'45'slot_18345 v0
  = case coe v0 of
      C_mkGeneralizeTel_18367 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_18347 ::
  T_GeneralizeTel_18365 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_'46'generalizedField'45'pp_18347 v0
  = case coe v0 of
      C_mkGeneralizeTel_18367 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_18349 ::
  T_GeneralizeTel_18365 -> Integer
d_'46'generalizedField'45'treasury_18349 v0
  = case coe v0 of
      C_mkGeneralizeTel_18367 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_18351 ::
  T_GeneralizeTel_18365 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286
d_'46'generalizedField'45'utxoSt_18351 v0
  = case coe v0 of
      C_mkGeneralizeTel_18367 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_18353 ::
  T_GeneralizeTel_18365 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286
d_'46'generalizedField'45'utxoSt''_18353 v0
  = case coe v0 of
      C_mkGeneralizeTel_18367 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_18355 ::
  T_GeneralizeTel_18365 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_18355 v0
  = case coe v0 of
      C_mkGeneralizeTel_18367 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_18357 ::
  T_GeneralizeTel_18365 -> MAlonzo.Code.Ledger.Enact.T_EnactState_918
d_'46'generalizedField'45'enactState_18357 v0
  = case coe v0 of
      C_mkGeneralizeTel_18367 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_18359 ::
  T_GeneralizeTel_18365 -> MAlonzo.Code.Ledger.Certs.T_CertState_1192
d_'46'generalizedField'45'certState''_18359 v0
  = case coe v0 of
      C_mkGeneralizeTel_18367 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_18361 ::
  T_GeneralizeTel_18365 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_18361 v0
  = case coe v0 of
      C_mkGeneralizeTel_18367 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_18363 ::
  T_GeneralizeTel_18365 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_18363 v0
  = case coe v0 of
      C_mkGeneralizeTel_18367 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_18365 a0 a1 = ()
data T_GeneralizeTel_18365
  = C_mkGeneralizeTel_18367 MAlonzo.Code.Ledger.Transaction.T_Tx_3180
                            MAlonzo.Code.Ledger.Certs.T_CertState_1192 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_PParams_262 Integer
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Enact.T_EnactState_918
                            MAlonzo.Code.Ledger.Certs.T_CertState_1192 (Maybe AgdaAny)
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
