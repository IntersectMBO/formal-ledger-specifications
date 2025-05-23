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

module MAlonzo.Code.Ledger.Conway.Ledger where

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
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Enact
import qualified MAlonzo.Code.Ledger.Conway.Gov
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Utxow
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Credential
d_Credential_46 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_82 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_92 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_92 ~v0 = du_DecEq'45'GovRole_92
du_DecEq'45'GovRole_92 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_92
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_884
-- _.GovActionState
d_GovActionState_160 a0 = ()
-- _.GovProposal
d_GovProposal_166 a0 = ()
-- _.GovVote
d_GovVote_170 a0 = ()
-- _.HasPParams
d_HasPParams_198 a0 a1 a2 = ()
-- _.HasUTxO
d_HasUTxO_204 a0 a1 a2 = ()
-- _.PParams
d_PParams_294 a0 = ()
-- _.PParamsOf
d_PParamsOf_298 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_PParamsOf_298 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_418 (coe v0)
-- _.ScriptHash
d_ScriptHash_354 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ScriptHash_354 = erased
-- _.Slot
d_Slot_398 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Slot_398 = erased
-- _.Tx
d_Tx_426 a0 = ()
-- _.TxBody
d_TxBody_428 a0 = ()
-- _.UTxOOf
d_UTxOOf_444 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2980 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_444 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_2988 (coe v0)
-- _.Voter
d_Voter_466 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Voter_466 = erased
-- _.epoch
d_epoch_500 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> AgdaAny
d_epoch_500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1598
         (coe v0))
-- _.GovActionState.action
d_action_744 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780
d_action_744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_878 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_746 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  AgdaAny
d_expiresIn_746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_expiresIn_876
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_748 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  AgdaAny
d_prevAction_748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_880
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_750 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_874
      (coe v0)
-- _.GovActionState.votes
d_votes_752 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_votes_872 (coe v0)
-- _.GovProposal.action
d_action_788 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780
d_action_788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_848 (coe v0)
-- _.GovProposal.anchor
d_anchor_790 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_752
d_anchor_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_858 (coe v0)
-- _.GovProposal.deposit
d_deposit_792 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  Integer
d_deposit_792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_deposit_854 (coe v0)
-- _.GovProposal.policy
d_policy_794 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  Maybe AgdaAny
d_policy_794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_852 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_796 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  AgdaAny
d_prevAction_796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_850
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_798 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_856
      (coe v0)
-- _.GovVote.anchor
d_anchor_810 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816 ->
  Maybe MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_752
d_anchor_810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_832 (coe v0)
-- _.GovVote.gid
d_gid_812 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gid_826 (coe v0)
-- _.GovVote.vote
d_vote_814 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Vote_808
d_vote_814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_vote_830 (coe v0)
-- _.GovVote.voter
d_voter_816 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_voter_828 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_842 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_846 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_848 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_850 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_932 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_PParamsOf_932 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_418 (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_940 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2980 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_940 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_2988 (coe v0)
-- _.PParams.Emax
d_Emax_1056 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_Emax_1056 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_380 (coe v0)
-- _.PParams.a
d_a_1058 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_a_1058 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_352 (coe v0)
-- _.PParams.a0
d_a0_1060 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1060 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_384 (coe v0)
-- _.PParams.b
d_b_1062 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_b_1062 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_354 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1064 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMaxTermLength_1064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_396 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1066 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMinSize_1066 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_394 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1068 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_coinsPerUTxOByte_1068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_364 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1070 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_collateralPercentage_1070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_386
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1072 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_costmdls_1072 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_388 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1074 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_drepActivity_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_404 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_drepDeposit_1076 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_402 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1078 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200
d_drepThresholds_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionDeposit_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_400 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1082 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionLifetime_1082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_398 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_keyDeposit_1084 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_356 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxBlockExUnits_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_344 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxBlockSize_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_336 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1090 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxCollateralInputs_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_348
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxHeaderSize_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_340 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1094 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerBlock_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_372
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerTx_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_370
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1098 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxTxExUnits_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_342 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxTxSize_1100 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_338 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1102 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxValSize_1102 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_346 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_368
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1106 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_minUTxOValue_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_378 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_360 (coe v0)
-- _.PParams.nopt
d_nopt_1110 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_nopt_1110 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_382 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1112 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_poolDeposit_1112 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_358 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1114 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242
d_poolThresholds_1114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_390 (coe v0)
-- _.PParams.prices
d_prices_1116 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_prices_1116 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_366 (coe v0)
-- _.PParams.pv
d_pv_1118 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1118 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_350 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1120 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_376
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1122 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_refScriptCostStride_1122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_374
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1124 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1124 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_362 (coe v0)
-- _.Tx.body
d_body_1538 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994
d_body_1538 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196 (coe v0)
-- _.Tx.isValid
d_isValid_1540 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 -> Bool
d_isValid_1540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3200 (coe v0)
-- _.Tx.txAD
d_txAD_1542 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 -> Maybe AgdaAny
d_txAD_1542 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3202 (coe v0)
-- _.Tx.wits
d_wits_1544 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3166
d_wits_1544 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3198 (coe v0)
-- _.TxBody.collateral
d_collateral_1548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3070 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  Maybe Integer
d_curTreasury_1550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3064 (coe v0)
-- _.TxBody.mint
d_mint_1552 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 -> AgdaAny
d_mint_1552 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3044 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1554 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3038 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1556 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 -> [AgdaAny]
d_reqSigHash_1556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3072 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1558 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  Maybe AgdaAny
d_scriptIntHash_1558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptIntHash_3074
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1560 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  Maybe AgdaAny
d_txADhash_1560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3060 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  Maybe AgdaAny
d_txNetworkId_1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3062 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1564 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1002]
d_txcerts_1564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3048 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1566 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 -> Integer
d_txdonation_1566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3056 (coe v0)
-- _.TxBody.txfee
d_txfee_1568 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 -> Integer
d_txfee_1568 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3042 (coe v0)
-- _.TxBody.txid
d_txid_1570 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 -> AgdaAny
d_txid_1570 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3068 (coe v0)
-- _.TxBody.txins
d_txins_1572 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1572 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3036 (coe v0)
-- _.TxBody.txouts
d_txouts_1574 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1574 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3040 (coe v0)
-- _.TxBody.txprop
d_txprop_1576 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834]
d_txprop_1576 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3054 (coe v0)
-- _.TxBody.txsize
d_txsize_1578 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 -> Integer
d_txsize_1578 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3066 (coe v0)
-- _.TxBody.txup
d_txup_1580 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1580 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txup_3058 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1582 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1582 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3046 (coe v0)
-- _.TxBody.txvote
d_txvote_1584 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816]
d_txvote_1584 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3052 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1586 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3050 (coe v0)
-- Ledger.Conway.Ledger._.EnactState
d_EnactState_1666 a0 a1 = ()
-- Ledger.Conway.Ledger._.EnactState.cc
d_cc_1710 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1710 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_934 (coe v0)
-- Ledger.Conway.Ledger._.EnactState.constitution
d_constitution_1712 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1712 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_constitution_936 (coe v0)
-- Ledger.Conway.Ledger._.EnactState.pparams
d_pparams_1714 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1714 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_940 (coe v0)
-- Ledger.Conway.Ledger._.EnactState.pv
d_pv_1716 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1716 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_pv_938 (coe v0)
-- Ledger.Conway.Ledger._.EnactState.withdrawals
d_withdrawals_1718 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1718 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_withdrawals_942 (coe v0)
-- Ledger.Conway.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1728 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Gov.T_GovEnv_2194 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1728 = erased
-- Ledger.Conway.Ledger._.GovState
d_GovState_1740 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 -> ()
d_GovState_1740 = erased
-- Ledger.Conway.Ledger._.GovStateOf
d_GovStateOf_1742 ::
  MAlonzo.Code.Ledger.Conway.Gov.T_HasGovState_2180 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1742 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.d_GovStateOf_2188 (coe v0)
-- Ledger.Conway.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1744 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1744 ~v0 ~v1 = du_HasCast'45'GovEnv_1744
du_HasCast'45'GovEnv_1744 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1744
  = coe MAlonzo.Code.Ledger.Conway.Gov.du_HasCast'45'GovEnv_2224
-- Ledger.Conway.Ledger._.HasGovState
d_HasGovState_1746 a0 a1 a2 a3 = ()
-- Ledger.Conway.Ledger._.HasGovState.GovStateOf
d_GovStateOf_1846 ::
  MAlonzo.Code.Ledger.Conway.Gov.T_HasGovState_2180 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1846 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.d_GovStateOf_2188 (coe v0)
-- Ledger.Conway.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_1866 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_1866 ~v0 ~v1 = du_HasCast'45'UTxOEnv_1866
du_HasCast'45'UTxOEnv_1866 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_1866
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_HasCast'45'UTxOEnv_2332
-- Ledger.Conway.Ledger._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_1874 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_928
d_HasDeposits'45'UTxOState_1874 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_1874
du_HasDeposits'45'UTxOState_1874 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_928
du_HasDeposits'45'UTxOState_1874
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_HasDeposits'45'UTxOState_2328
-- Ledger.Conway.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_1878 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2980
d_HasUTxO'45'UTxOState_1878 ~v0 ~v1 = du_HasUTxO'45'UTxOState_1878
du_HasUTxO'45'UTxOState_1878 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2980
du_HasUTxO'45'UTxOState_1878
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_HasUTxO'45'UTxOState_2330
-- Ledger.Conway.Ledger._.HasUTxOState
d_HasUTxOState_1880 a0 a1 a2 a3 = ()
-- Ledger.Conway.Ledger._.UTxOState
d_UTxOState_1898 a0 a1 = ()
-- Ledger.Conway.Ledger._.UTxOStateOf
d_UTxOStateOf_1900 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_HasUTxOState_2314 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
d_UTxOStateOf_1900 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_UTxOStateOf_2322 (coe v0)
-- Ledger.Conway.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2004 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_HasUTxOState_2314 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
d_UTxOStateOf_2004 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_UTxOStateOf_2322 (coe v0)
-- Ledger.Conway.Ledger._.UTxOState.deposits
d_deposits_2016 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2016 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_deposits_2304 (coe v0)
-- Ledger.Conway.Ledger._.UTxOState.donations
d_donations_2018 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 -> Integer
d_donations_2018 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_donations_2306 (coe v0)
-- Ledger.Conway.Ledger._.UTxOState.fees
d_fees_2020 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 -> Integer
d_fees_2020 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_fees_2302 (coe v0)
-- Ledger.Conway.Ledger._.UTxOState.utxo
d_utxo_2022 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2022 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2300 (coe v0)
-- Ledger.Conway.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2060 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2122 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1038 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1002] ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2122 = erased
-- Ledger.Conway.Ledger._.CertState
d_CertState_2142 a0 a1 = ()
-- Ledger.Conway.Ledger._.CertStateOf
d_CertStateOf_2144 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1216 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196
d_CertStateOf_2144 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_CertStateOf_1224 (coe v0)
-- Ledger.Conway.Ledger._.DepositsOf
d_DepositsOf_2174 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_928 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2174 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_936 (coe v0)
-- Ledger.Conway.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2190 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2190 ~v0 ~v1 = du_HasCast'45'CertEnv_2190
du_HasCast'45'CertEnv_2190 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2190
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'CertEnv_1266
-- Ledger.Conway.Ledger._.HasCertState
d_HasCertState_2202 a0 a1 a2 a3 = ()
-- Ledger.Conway.Ledger._.HasDeposits
d_HasDeposits_2216 a0 a1 a2 a3 = ()
-- Ledger.Conway.Ledger._.CertState.dState
d_dState_2336 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DState_1080
d_dState_2336 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_dState_1204 (coe v0)
-- Ledger.Conway.Ledger._.CertState.gState
d_gState_2338 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_GState_1164
d_gState_2338 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_gState_1208 (coe v0)
-- Ledger.Conway.Ledger._.CertState.pState
d_pState_2340 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1136
d_pState_2340 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pState_1206 (coe v0)
-- Ledger.Conway.Ledger._.HasCertState.CertStateOf
d_CertStateOf_2394 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1216 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196
d_CertStateOf_2394 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_CertStateOf_1224 (coe v0)
-- Ledger.Conway.Ledger._.HasDeposits.DepositsOf
d_DepositsOf_2406 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_928 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2406 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_936 (coe v0)
-- Ledger.Conway.Ledger.LEnv
d_LEnv_2446 a0 a1 = ()
data T_LEnv_2446
  = C_LEnv'46'constructor_6569 AgdaAny (Maybe AgdaAny)
                               MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
                               MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 Integer
-- Ledger.Conway.Ledger.LEnv.slot
d_slot_2458 :: T_LEnv_2446 -> AgdaAny
d_slot_2458 v0
  = case coe v0 of
      C_LEnv'46'constructor_6569 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LEnv.ppolicy
d_ppolicy_2460 :: T_LEnv_2446 -> Maybe AgdaAny
d_ppolicy_2460 v0
  = case coe v0 of
      C_LEnv'46'constructor_6569 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LEnv.pparams
d_pparams_2462 ::
  T_LEnv_2446 -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_pparams_2462 v0
  = case coe v0 of
      C_LEnv'46'constructor_6569 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LEnv.enactState
d_enactState_2464 ::
  T_LEnv_2446 -> MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922
d_enactState_2464 v0
  = case coe v0 of
      C_LEnv'46'constructor_6569 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LEnv.treasury
d_treasury_2466 :: T_LEnv_2446 -> Integer
d_treasury_2466 v0
  = case coe v0 of
      C_LEnv'46'constructor_6569 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.HasPParams-LEnv
d_HasPParams'45'LEnv_2468 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410
d_HasPParams'45'LEnv_2468 ~v0 ~v1 = du_HasPParams'45'LEnv_2468
du_HasPParams'45'LEnv_2468 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410
du_HasPParams'45'LEnv_2468
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.C_HasPParams'46'constructor_9199
      (coe (\ v0 -> d_pparams_2462 (coe v0)))
-- Ledger.Conway.Ledger.LState
d_LState_2470 a0 a1 = ()
data T_LState_2470
  = C_'10214'_'44'_'44'_'10215''737'_2484 MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196
-- Ledger.Conway.Ledger.LState.utxoSt
d_utxoSt_2478 ::
  T_LState_2470 -> MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
d_utxoSt_2478 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2484 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LState.govSt
d_govSt_2480 ::
  T_LState_2470 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2480 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2484 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LState.certState
d_certState_2482 ::
  T_LState_2470 -> MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196
d_certState_2482 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2484 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.HasLState
d_HasLState_2490 a0 a1 a2 a3 = ()
newtype T_HasLState_2490
  = C_HasLState'46'constructor_6965 (AgdaAny -> T_LState_2470)
-- Ledger.Conway.Ledger.HasLState.LStateOf
d_LStateOf_2498 :: T_HasLState_2490 -> AgdaAny -> T_LState_2470
d_LStateOf_2498 v0
  = case coe v0 of
      C_HasLState'46'constructor_6965 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger._.LStateOf
d_LStateOf_2502 :: T_HasLState_2490 -> AgdaAny -> T_LState_2470
d_LStateOf_2502 v0 = coe d_LStateOf_2498 (coe v0)
-- Ledger.Conway.Ledger.HasUTxOState-LState
d_HasUTxOState'45'LState_2504 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_HasUTxOState_2314
d_HasUTxOState'45'LState_2504 ~v0 ~v1
  = du_HasUTxOState'45'LState_2504
du_HasUTxOState'45'LState_2504 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_HasUTxOState_2314
du_HasUTxOState'45'LState_2504
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.C_HasUTxOState'46'constructor_18435
      (coe (\ v0 -> d_utxoSt_2478 (coe v0)))
-- Ledger.Conway.Ledger.HasUTxO-LState
d_HasUTxO'45'LState_2506 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2980
d_HasUTxO'45'LState_2506 ~v0 ~v1 = du_HasUTxO'45'LState_2506
du_HasUTxO'45'LState_2506 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2980
du_HasUTxO'45'LState_2506
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.C_HasUTxO'46'constructor_18507
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_2988
              (coe MAlonzo.Code.Ledger.Conway.Utxo.du_HasUTxO'45'UTxOState_2330)
              (d_utxoSt_2478 (coe v0))))
-- Ledger.Conway.Ledger.HasGovState-LState
d_HasGovState'45'LState_2508 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Gov.T_HasGovState_2180
d_HasGovState'45'LState_2508 ~v0 ~v1
  = du_HasGovState'45'LState_2508
du_HasGovState'45'LState_2508 ::
  MAlonzo.Code.Ledger.Conway.Gov.T_HasGovState_2180
du_HasGovState'45'LState_2508
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.C_HasGovState'46'constructor_4427
      (coe (\ v0 -> d_govSt_2480 (coe v0)))
-- Ledger.Conway.Ledger.HasCertState-LState
d_HasCertState'45'LState_2510 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1216
d_HasCertState'45'LState_2510 ~v0 ~v1
  = du_HasCertState'45'LState_2510
du_HasCertState'45'LState_2510 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1216
du_HasCertState'45'LState_2510
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.C_HasCertState'46'constructor_19963
      (coe (\ v0 -> d_certState_2482 (coe v0)))
-- Ledger.Conway.Ledger.HasDeposits-LState
d_HasDeposits'45'LState_2512 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_928
d_HasDeposits'45'LState_2512 ~v0 ~v1
  = du_HasDeposits'45'LState_2512
du_HasDeposits'45'LState_2512 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_928
du_HasDeposits'45'LState_2512
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.C_HasDeposits'46'constructor_2991
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_936
              (coe
                 MAlonzo.Code.Ledger.Conway.Utxo.du_HasDeposits'45'UTxOState_2328)
              (d_utxoSt_2478 (coe v0))))
-- Ledger.Conway.Ledger.HasCast-LEnv
d_HasCast'45'LEnv_2514 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2514 ~v0 ~v1 = du_HasCast'45'LEnv_2514
du_HasCast'45'LEnv_2514 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2514
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                 (2446 :: Integer) (14664859526836954062 :: Integer)
                                 "Ledger.Conway.Ledger.LEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (398 :: Integer) (14664859526836954062 :: Integer) "_.Slot"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                    (2446 :: Integer) (14664859526836954062 :: Integer)
                                    "Ledger.Conway.Ledger.LEnv"
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
                                                (354 :: Integer) (14664859526836954062 :: Integer)
                                                "_.ScriptHash"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                       (2446 :: Integer) (14664859526836954062 :: Integer)
                                       "Ledger.Conway.Ledger.LEnv"
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
                                       (294 :: Integer) (14664859526836954062 :: Integer)
                                       "_.PParams"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                          (2446 :: Integer) (14664859526836954062 :: Integer)
                                          "Ledger.Conway.Ledger.LEnv"
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
                                          (1666 :: Integer) (14664859526836954062 :: Integer)
                                          "Ledger.Conway.Ledger._.EnactState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                             (2446 :: Integer) (14664859526836954062 :: Integer)
                                             "Ledger.Conway.Ledger.LEnv"
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
         (coe C_LEnv'46'constructor_6569))
-- Ledger.Conway.Ledger.HasCast-LState
d_HasCast'45'LState_2516 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2516 ~v0 ~v1 = du_HasCast'45'LState_2516
du_HasCast'45'LState_2516 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2516
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                 (2470 :: Integer) (14664859526836954062 :: Integer)
                                 "Ledger.Conway.Ledger.LState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1898 :: Integer) (14664859526836954062 :: Integer)
                                 "Ledger.Conway.Ledger._.UTxOState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                    (2470 :: Integer) (14664859526836954062 :: Integer)
                                    "Ledger.Conway.Ledger.LState"
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
                                    (1740 :: Integer) (14664859526836954062 :: Integer)
                                    "Ledger.Conway.Ledger._.GovState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                       (2470 :: Integer) (14664859526836954062 :: Integer)
                                       "Ledger.Conway.Ledger.LState"
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
                                       (2142 :: Integer) (14664859526836954062 :: Integer)
                                       "Ledger.Conway.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2484))
-- Ledger.Conway.Ledger.txgov
d_txgov_2518 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2518 ~v0 ~v1 v2 = du_txgov_2518 v2
du_txgov_2518 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2518 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3054 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3052 (coe v0)))
-- Ledger.Conway.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2568 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2568 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2568 v0 v2 v3
du_rmOrphanDRepVotes_2568 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2568 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_go_2584 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Conway.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2578 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_ifDRepRegistered_2578 = erased
-- Ledger.Conway.Ledger._.go
d_go_2584 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860
d_go_2584 v0 ~v1 v2 ~v3 v4 = du_go_2584 v0 v2 v4
du_go_2584 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860
du_go_2584 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_GovActionState'46'constructor_5213
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe
                    MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_884)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_DRep_736))
              (coe
                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                    (coe
                       MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                       (coe
                          MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                          (coe
                             MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_548
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1470
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Certs.d_dreps_1170
                       (coe MAlonzo.Code.Ledger.Conway.Certs.d_gState_1208 (coe v1))))))
         (MAlonzo.Code.Ledger.Conway.GovernanceActions.d_votes_872
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_874
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.GovernanceActions.d_expiresIn_876
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_878 (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_880
         (coe v2))
-- Ledger.Conway.Ledger.allColdCreds
d_allColdCreds_2588 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_allColdCreds_2588 ~v0 ~v1 v2 v3 = du_allColdCreds_2588 v2 v3
du_allColdCreds_2588 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
du_allColdCreds_2588 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Enact.du_ccCreds_968
         (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_934 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.Conway.GovernanceActions.du_proposedCC_896
                 (coe
                    MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_878
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2630 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2630
  = C_LEDGER'45'V_2678 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2680 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Ledger._.txcerts
d_txcerts_2652 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_18421 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1002]
d_txcerts_2652 ~v0 ~v1 v2 = du_txcerts_2652 v2
du_txcerts_2652 ::
  T_GeneralizeTel_18421 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1002]
du_txcerts_2652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3048
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
         (coe d_'46'generalizedField'45'tx_18397 (coe v0)))
-- Ledger.Conway.Ledger._.txid
d_txid_2658 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_18421 -> AgdaAny
d_txid_2658 ~v0 ~v1 v2 = du_txid_2658 v2
du_txid_2658 :: T_GeneralizeTel_18421 -> AgdaAny
du_txid_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3068
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
         (coe d_'46'generalizedField'45'tx_18397 (coe v0)))
-- Ledger.Conway.Ledger._.txvote
d_txvote_2672 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_18421 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816]
d_txvote_2672 ~v0 ~v1 v2 = du_txvote_2672 v2
du_txvote_2672 ::
  T_GeneralizeTel_18421 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816]
du_txvote_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3052
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
         (coe d_'46'generalizedField'45'tx_18397 (coe v0)))
-- Ledger.Conway.Ledger._.txwdrls
d_txwdrls_2674 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_18421 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2674 ~v0 ~v1 v2 = du_txwdrls_2674 v2
du_txwdrls_2674 ::
  T_GeneralizeTel_18421 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3050
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196
         (coe d_'46'generalizedField'45'tx_18397 (coe v0)))
-- Ledger.Conway.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2698 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_LEnv_2446 ->
  T_LState_2470 ->
  [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186] ->
  T_LState_2470 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2698 = erased
-- Ledger.Conway.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_18397 ::
  T_GeneralizeTel_18421 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186
d_'46'generalizedField'45'tx_18397 v0
  = case coe v0 of
      C_mkGeneralizeTel_18423 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_18399 ::
  T_GeneralizeTel_18421 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196
d_'46'generalizedField'45'certState_18399 v0
  = case coe v0 of
      C_mkGeneralizeTel_18423 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_18401 ::
  T_GeneralizeTel_18421 -> AgdaAny
d_'46'generalizedField'45'slot_18401 v0
  = case coe v0 of
      C_mkGeneralizeTel_18423 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_18403 ::
  T_GeneralizeTel_18421 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_'46'generalizedField'45'pp_18403 v0
  = case coe v0 of
      C_mkGeneralizeTel_18423 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_18405 ::
  T_GeneralizeTel_18421 -> Integer
d_'46'generalizedField'45'treasury_18405 v0
  = case coe v0 of
      C_mkGeneralizeTel_18423 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_18407 ::
  T_GeneralizeTel_18421 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
d_'46'generalizedField'45'utxoSt_18407 v0
  = case coe v0 of
      C_mkGeneralizeTel_18423 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_18409 ::
  T_GeneralizeTel_18421 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
d_'46'generalizedField'45'utxoSt''_18409 v0
  = case coe v0 of
      C_mkGeneralizeTel_18423 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_18411 ::
  T_GeneralizeTel_18421 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_18411 v0
  = case coe v0 of
      C_mkGeneralizeTel_18423 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_18413 ::
  T_GeneralizeTel_18421 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922
d_'46'generalizedField'45'enactState_18413 v0
  = case coe v0 of
      C_mkGeneralizeTel_18423 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_18415 ::
  T_GeneralizeTel_18421 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196
d_'46'generalizedField'45'certState''_18415 v0
  = case coe v0 of
      C_mkGeneralizeTel_18423 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_18417 ::
  T_GeneralizeTel_18421 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_18417 v0
  = case coe v0 of
      C_mkGeneralizeTel_18423 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_18419 ::
  T_GeneralizeTel_18421 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_18419 v0
  = case coe v0 of
      C_mkGeneralizeTel_18423 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.GeneralizeTel
d_GeneralizeTel_18421 a0 a1 = ()
data T_GeneralizeTel_18421
  = C_mkGeneralizeTel_18423 MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186
                            MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196 AgdaAny
                            MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 Integer
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922
                            MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196 (Maybe AgdaAny)
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
