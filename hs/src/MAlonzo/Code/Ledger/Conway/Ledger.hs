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
import qualified MAlonzo.Code.Ledger.Conway.Gov.Actions
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
d_DecEq'45'Credential_80 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_80 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_90 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_90 ~v0 = du_DecEq'45'GovRole_90
du_DecEq'45'GovRole_90 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_90
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.Actions.du_DecEq'45'GovRole_906
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
d_PParams_292 a0 = ()
-- _.PParamsOf
d_PParamsOf_296 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_442 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_PParamsOf_296 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_450 (coe v0)
-- _.ScriptHash
d_ScriptHash_340 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ScriptHash_340 = erased
-- _.Slot
d_Slot_384 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Slot_384 = erased
-- _.Tx
d_Tx_410 a0 = ()
-- _.TxBody
d_TxBody_412 a0 = ()
-- _.UTxOOf
d_UTxOOf_428 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2928 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_428 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_2936 (coe v0)
-- _.Voter
d_Voter_450 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Voter_450 = erased
-- _.epoch
d_epoch_484 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> AgdaAny
d_epoch_484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
         (coe v0))
-- _.GovActionState.action
d_action_724 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovAction_802
d_action_724 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_action_900 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_726 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  AgdaAny
d_expiresIn_726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.Actions.d_expiresIn_898 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_728 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  AgdaAny
d_prevAction_728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.Actions.d_prevAction_902 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_730 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.Actions.d_returnAddr_896 (coe v0)
-- _.GovActionState.votes
d_votes_732 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_732 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_votes_894 (coe v0)
-- _.GovActions.GovActionState
d_GovActionState_774 a0 = ()
-- _.GovActions.GovProposal
d_GovProposal_778 a0 = ()
-- _.GovActions.GovRole
d_GovRole_780 a0 = ()
-- _.GovActions.GovVote
d_GovVote_782 a0 = ()
-- _.GovActions.GovProposal.action
d_action_840 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovProposal_856 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovAction_802
d_action_840 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_action_870 (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_842 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovProposal_856 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_Anchor_774
d_anchor_842 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_anchor_880 (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_844 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovProposal_856 -> Integer
d_deposit_844 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_deposit_876 (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_846 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovProposal_856 ->
  Maybe AgdaAny
d_policy_846 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_policy_874 (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_848 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovProposal_856 -> AgdaAny
d_prevAction_848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.Actions.d_prevAction_872 (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_850 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovProposal_856 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.Actions.d_returnAddr_878 (coe v0)
-- _.GovActions.GovVote.anchor
d_anchor_862 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovVote_838 ->
  Maybe MAlonzo.Code.Ledger.Conway.Gov.Actions.T_Anchor_774
d_anchor_862 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_anchor_854 (coe v0)
-- _.GovActions.GovVote.gid
d_gid_864 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovVote_838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_864 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_gid_848 (coe v0)
-- _.GovActions.GovVote.vote
d_vote_866 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovVote_838 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_Vote_830
d_vote_866 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_vote_852 (coe v0)
-- _.GovActions.GovVote.voter
d_voter_868 ::
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovVote_838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_868 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_voter_850 (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_912 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_442 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_PParamsOf_912 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_450 (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_920 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2928 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_920 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_2936 (coe v0)
-- _.PParams.Emax
d_Emax_1040 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_Emax_1040 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_412 (coe v0)
-- _.PParams.a
d_a_1042 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_a_1042 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_384 (coe v0)
-- _.PParams.a0
d_a0_1044 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1044 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_416 (coe v0)
-- _.PParams.b
d_b_1046 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_b_1046 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_386 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1048 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_ccMaxTermLength_1048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_428 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1050 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_ccMinSize_1050 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_426 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1052 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_coinsPerUTxOByte_1052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_396 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1054 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_collateralPercentage_1054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_418
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1056 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_costmdls_1056 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_420 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1058 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_drepActivity_1058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_436 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1060 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_drepDeposit_1060 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_434 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1062 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232
d_drepThresholds_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1064 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_govActionDeposit_1064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_432 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1066 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_govActionLifetime_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_430 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1068 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_keyDeposit_1068 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_388 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1070 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_maxBlockExUnits_1070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_376 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1072 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxBlockSize_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_368 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1074 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxCollateralInputs_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_380
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxHeaderSize_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_372 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1078 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxRefScriptSizePerBlock_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_404
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxRefScriptSizePerTx_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_402
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1082 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_maxTxExUnits_1082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_374 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxTxSize_1084 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_370 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxValSize_1086 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_378 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_400
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1090 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_minUTxOValue_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_410 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_392 (coe v0)
-- _.PParams.nopt
d_nopt_1094 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_nopt_1094 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_414 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_poolDeposit_1096 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_390 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1098 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274
d_poolThresholds_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_422 (coe v0)
-- _.PParams.prices
d_prices_1100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_prices_1100 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_398 (coe v0)
-- _.PParams.pv
d_pv_1102 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1102 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_382 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_408
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1106 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_406
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1108 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_394 (coe v0)
-- _.Tx.body
d_body_1522 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_body_1522 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v0)
-- _.Tx.isValid
d_isValid_1524 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Bool
d_isValid_1524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v0)
-- _.Tx.txAD
d_txAD_1526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Maybe AgdaAny
d_txAD_1526 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3150 (coe v0)
-- _.Tx.txsize
d_txsize_1528 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Integer
d_txsize_1528 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3146 (coe v0)
-- _.Tx.wits
d_wits_1530 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3110
d_wits_1530 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144 (coe v0)
-- _.TxBody.collateral
d_collateral_1534 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3014 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1536 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe Integer
d_curTreasury_1536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3010 (coe v0)
-- _.TxBody.mint
d_mint_1538 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
d_mint_1538 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2990 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1540 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2984 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1542 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> [AgdaAny]
d_reqSigHash_1542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3016 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1544 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe AgdaAny
d_scriptIntHash_1544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptIntHash_3018
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe AgdaAny
d_txADhash_1546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3006 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe AgdaAny
d_txNetworkId_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3008 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
d_txcerts_1550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2994 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1552 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_txdonation_1552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3002 (coe v0)
-- _.TxBody.txfee
d_txfee_1554 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_txfee_1554 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_2988 (coe v0)
-- _.TxBody.txid
d_txid_1556 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> AgdaAny
d_txid_1556 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3012 (coe v0)
-- _.TxBody.txins
d_txins_1558 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1558 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2982 (coe v0)
-- _.TxBody.txouts
d_txouts_1560 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1560 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2986 (coe v0)
-- _.TxBody.txprop
d_txprop_1562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovProposal_856]
d_txprop_1562 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3000 (coe v0)
-- _.TxBody.txup
d_txup_1564 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1564 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txup_3004 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1566 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1566 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2992 (coe v0)
-- _.TxBody.txvote
d_txvote_1568 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovVote_838]
d_txvote_1568 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_2998 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1570 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2996 (coe v0)
-- Ledger.Conway.Ledger._.EnactState
d_EnactState_1636 a0 a1 = ()
-- Ledger.Conway.Ledger._.EnactState.cc
d_cc_1680 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1680 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_954 (coe v0)
-- Ledger.Conway.Ledger._.EnactState.constitution
d_constitution_1682 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1682 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_constitution_956 (coe v0)
-- Ledger.Conway.Ledger._.EnactState.pparams
d_pparams_1684 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1684 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_960 (coe v0)
-- Ledger.Conway.Ledger._.EnactState.pv
d_pv_1686 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1686 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_pv_958 (coe v0)
-- Ledger.Conway.Ledger._.EnactState.withdrawals
d_withdrawals_1688 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1688 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_withdrawals_962 (coe v0)
-- Ledger.Conway.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1698 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Gov.T_GovEnv_2164 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1698 = erased
-- Ledger.Conway.Ledger._.GovState
d_GovState_1710 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 -> ()
d_GovState_1710 = erased
-- Ledger.Conway.Ledger._.GovStateOf
d_GovStateOf_1712 ::
  MAlonzo.Code.Ledger.Conway.Gov.T_HasGovState_2150 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1712 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.d_GovStateOf_2158 (coe v0)
-- Ledger.Conway.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1714 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1714 ~v0 ~v1 = du_HasCast'45'GovEnv_1714
du_HasCast'45'GovEnv_1714 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1714
  = coe MAlonzo.Code.Ledger.Conway.Gov.du_HasCast'45'GovEnv_2194
-- Ledger.Conway.Ledger._.HasGovState
d_HasGovState_1716 a0 a1 a2 a3 = ()
-- Ledger.Conway.Ledger._.HasGovState.GovStateOf
d_GovStateOf_1816 ::
  MAlonzo.Code.Ledger.Conway.Gov.T_HasGovState_2150 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1816 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.d_GovStateOf_2158 (coe v0)
-- Ledger.Conway.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_1836 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_1836 ~v0 ~v1 = du_HasCast'45'UTxOEnv_1836
du_HasCast'45'UTxOEnv_1836 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_1836
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_HasCast'45'UTxOEnv_2102
-- Ledger.Conway.Ledger._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_1844 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_948
d_HasDeposits'45'UTxOState_1844 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_1844
du_HasDeposits'45'UTxOState_1844 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_948
du_HasDeposits'45'UTxOState_1844
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_HasDeposits'45'UTxOState_2098
-- Ledger.Conway.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_1848 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2928
d_HasUTxO'45'UTxOState_1848 ~v0 ~v1 = du_HasUTxO'45'UTxOState_1848
du_HasUTxO'45'UTxOState_1848 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2928
du_HasUTxO'45'UTxOState_1848
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_HasUTxO'45'UTxOState_2100
-- Ledger.Conway.Ledger._.HasUTxOState
d_HasUTxOState_1850 a0 a1 a2 a3 = ()
-- Ledger.Conway.Ledger._.UTxOState
d_UTxOState_1868 a0 a1 = ()
-- Ledger.Conway.Ledger._.UTxOStateOf
d_UTxOStateOf_1870 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_HasUTxOState_2084 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
d_UTxOStateOf_1870 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_UTxOStateOf_2092 (coe v0)
-- Ledger.Conway.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_1960 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_HasUTxOState_2084 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
d_UTxOStateOf_1960 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_UTxOStateOf_2092 (coe v0)
-- Ledger.Conway.Ledger._.UTxOState.deposits
d_deposits_1972 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1972 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_deposits_2074 (coe v0)
-- Ledger.Conway.Ledger._.UTxOState.donations
d_donations_1974 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 -> Integer
d_donations_1974 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_donations_2076 (coe v0)
-- Ledger.Conway.Ledger._.UTxOState.fees
d_fees_1976 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 -> Integer
d_fees_1976 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_fees_2072 (coe v0)
-- Ledger.Conway.Ledger._.UTxOState.utxo
d_utxo_1978 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1978 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070 (coe v0)
-- Ledger.Conway.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2012 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2064 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1058 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022] ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2064 = erased
-- Ledger.Conway.Ledger._.CertState
d_CertState_2084 a0 a1 = ()
-- Ledger.Conway.Ledger._.CertStateOf
d_CertStateOf_2086 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1236 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216
d_CertStateOf_2086 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_CertStateOf_1244 (coe v0)
-- Ledger.Conway.Ledger._.DepositsOf
d_DepositsOf_2116 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2116 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_956 (coe v0)
-- Ledger.Conway.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2132 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2132 ~v0 ~v1 = du_HasCast'45'CertEnv_2132
du_HasCast'45'CertEnv_2132 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2132
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'CertEnv_1286
-- Ledger.Conway.Ledger._.HasCertState
d_HasCertState_2144 a0 a1 a2 a3 = ()
-- Ledger.Conway.Ledger._.HasDeposits
d_HasDeposits_2158 a0 a1 a2 a3 = ()
-- Ledger.Conway.Ledger._.CertState.dState
d_dState_2278 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DState_1100
d_dState_2278 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_dState_1224 (coe v0)
-- Ledger.Conway.Ledger._.CertState.gState
d_gState_2280 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_GState_1184
d_gState_2280 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_gState_1228 (coe v0)
-- Ledger.Conway.Ledger._.CertState.pState
d_pState_2282 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1156
d_pState_2282 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pState_1226 (coe v0)
-- Ledger.Conway.Ledger._.HasCertState.CertStateOf
d_CertStateOf_2336 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1236 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216
d_CertStateOf_2336 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_CertStateOf_1244 (coe v0)
-- Ledger.Conway.Ledger._.HasDeposits.DepositsOf
d_DepositsOf_2348 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2348 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_956 (coe v0)
-- Ledger.Conway.Ledger.LEnv
d_LEnv_2388 a0 a1 = ()
data T_LEnv_2388
  = C_LEnv'46'constructor_6337 AgdaAny (Maybe AgdaAny)
                               MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
                               MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 Integer
-- Ledger.Conway.Ledger.LEnv.slot
d_slot_2400 :: T_LEnv_2388 -> AgdaAny
d_slot_2400 v0
  = case coe v0 of
      C_LEnv'46'constructor_6337 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LEnv.ppolicy
d_ppolicy_2402 :: T_LEnv_2388 -> Maybe AgdaAny
d_ppolicy_2402 v0
  = case coe v0 of
      C_LEnv'46'constructor_6337 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LEnv.pparams
d_pparams_2404 ::
  T_LEnv_2388 -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pparams_2404 v0
  = case coe v0 of
      C_LEnv'46'constructor_6337 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LEnv.enactState
d_enactState_2406 ::
  T_LEnv_2388 -> MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942
d_enactState_2406 v0
  = case coe v0 of
      C_LEnv'46'constructor_6337 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LEnv.treasury
d_treasury_2408 :: T_LEnv_2388 -> Integer
d_treasury_2408 v0
  = case coe v0 of
      C_LEnv'46'constructor_6337 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.HasPParams-LEnv
d_HasPParams'45'LEnv_2410 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_442
d_HasPParams'45'LEnv_2410 ~v0 ~v1 = du_HasPParams'45'LEnv_2410
du_HasPParams'45'LEnv_2410 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_442
du_HasPParams'45'LEnv_2410
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.C_HasPParams'46'constructor_9433
      (coe (\ v0 -> d_pparams_2404 (coe v0)))
-- Ledger.Conway.Ledger.LState
d_LState_2412 a0 a1 = ()
data T_LState_2412
  = C_'10214'_'44'_'44'_'10215''737'_2426 MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216
-- Ledger.Conway.Ledger.LState.utxoSt
d_utxoSt_2420 ::
  T_LState_2412 -> MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
d_utxoSt_2420 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2426 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LState.govSt
d_govSt_2422 ::
  T_LState_2412 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2422 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2426 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LState.certState
d_certState_2424 ::
  T_LState_2412 -> MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216
d_certState_2424 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2426 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.HasLState
d_HasLState_2432 a0 a1 a2 a3 = ()
newtype T_HasLState_2432
  = C_HasLState'46'constructor_6733 (AgdaAny -> T_LState_2412)
-- Ledger.Conway.Ledger.HasLState.LStateOf
d_LStateOf_2440 :: T_HasLState_2432 -> AgdaAny -> T_LState_2412
d_LStateOf_2440 v0
  = case coe v0 of
      C_HasLState'46'constructor_6733 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger._.LStateOf
d_LStateOf_2444 :: T_HasLState_2432 -> AgdaAny -> T_LState_2412
d_LStateOf_2444 v0 = coe d_LStateOf_2440 (coe v0)
-- Ledger.Conway.Ledger.HasUTxOState-LState
d_HasUTxOState'45'LState_2446 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_HasUTxOState_2084
d_HasUTxOState'45'LState_2446 ~v0 ~v1
  = du_HasUTxOState'45'LState_2446
du_HasUTxOState'45'LState_2446 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_HasUTxOState_2084
du_HasUTxOState'45'LState_2446
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.C_HasUTxOState'46'constructor_6483
      (coe (\ v0 -> d_utxoSt_2420 (coe v0)))
-- Ledger.Conway.Ledger.HasUTxO-LState
d_HasUTxO'45'LState_2448 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2928
d_HasUTxO'45'LState_2448 ~v0 ~v1 = du_HasUTxO'45'LState_2448
du_HasUTxO'45'LState_2448 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2928
du_HasUTxO'45'LState_2448
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.C_HasUTxO'46'constructor_18291
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_2936
              (coe MAlonzo.Code.Ledger.Conway.Utxo.du_HasUTxO'45'UTxOState_2100)
              (d_utxoSt_2420 (coe v0))))
-- Ledger.Conway.Ledger.HasGovState-LState
d_HasGovState'45'LState_2450 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Gov.T_HasGovState_2150
d_HasGovState'45'LState_2450 ~v0 ~v1
  = du_HasGovState'45'LState_2450
du_HasGovState'45'LState_2450 ::
  MAlonzo.Code.Ledger.Conway.Gov.T_HasGovState_2150
du_HasGovState'45'LState_2450
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.C_HasGovState'46'constructor_4369
      (coe (\ v0 -> d_govSt_2422 (coe v0)))
-- Ledger.Conway.Ledger.HasCertState-LState
d_HasCertState'45'LState_2452 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1236
d_HasCertState'45'LState_2452 ~v0 ~v1
  = du_HasCertState'45'LState_2452
du_HasCertState'45'LState_2452 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1236
du_HasCertState'45'LState_2452
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.C_HasCertState'46'constructor_20011
      (coe (\ v0 -> d_certState_2424 (coe v0)))
-- Ledger.Conway.Ledger.HasDeposits-LState
d_HasDeposits'45'LState_2454 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_948
d_HasDeposits'45'LState_2454 ~v0 ~v1
  = du_HasDeposits'45'LState_2454
du_HasDeposits'45'LState_2454 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_948
du_HasDeposits'45'LState_2454
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.C_HasDeposits'46'constructor_3039
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_956
              (coe
                 MAlonzo.Code.Ledger.Conway.Utxo.du_HasDeposits'45'UTxOState_2098)
              (d_utxoSt_2420 (coe v0))))
-- Ledger.Conway.Ledger.HasCast-LEnv
d_HasCast'45'LEnv_2456 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2456 ~v0 ~v1 = du_HasCast'45'LEnv_2456
du_HasCast'45'LEnv_2456 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2456
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
                                 (2388 :: Integer) (14664859526836954062 :: Integer)
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
                                 (384 :: Integer) (14664859526836954062 :: Integer) "_.Slot"
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
                                    (2388 :: Integer) (14664859526836954062 :: Integer)
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
                                                (340 :: Integer) (14664859526836954062 :: Integer)
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
                                       (2388 :: Integer) (14664859526836954062 :: Integer)
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
                                       (292 :: Integer) (14664859526836954062 :: Integer)
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
                                          (2388 :: Integer) (14664859526836954062 :: Integer)
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
                                          (1636 :: Integer) (14664859526836954062 :: Integer)
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
                                             (2388 :: Integer) (14664859526836954062 :: Integer)
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
         (coe C_LEnv'46'constructor_6337))
-- Ledger.Conway.Ledger.HasCast-LState
d_HasCast'45'LState_2458 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2458 ~v0 ~v1 = du_HasCast'45'LState_2458
du_HasCast'45'LState_2458 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2458
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
                                 (2412 :: Integer) (14664859526836954062 :: Integer)
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
                                 (1868 :: Integer) (14664859526836954062 :: Integer)
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
                                    (2412 :: Integer) (14664859526836954062 :: Integer)
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
                                    (1710 :: Integer) (14664859526836954062 :: Integer)
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
                                       (2412 :: Integer) (14664859526836954062 :: Integer)
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
                                       (2084 :: Integer) (14664859526836954062 :: Integer)
                                       "Ledger.Conway.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2426))
-- Ledger.Conway.Ledger.txgov
d_txgov_2460 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2460 ~v0 ~v1 v2 = du_txgov_2460 v2
du_txgov_2460 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2460 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3000 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_2998 (coe v0)))
-- Ledger.Conway.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2508 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2508 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2508 v0 v2 v3
du_rmOrphanDRepVotes_2508 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2508 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_go_2524 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Conway.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2518 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_ifDRepRegistered_2518 = erased
-- Ledger.Conway.Ledger._.go
d_go_2524 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882
d_go_2524 v0 ~v1 v2 ~v3 v4 = du_go_2524 v0 v2 v4
du_go_2524 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882 ->
  MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovActionState_882
du_go_2524 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.Actions.C_GovActionState'46'constructor_5261
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe
                    MAlonzo.Code.Ledger.Conway.Gov.Actions.du_DecEq'45'GovRole_906)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.C_DRep_758))
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
                             MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0))))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_548
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1470
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Certs.d_dreps_1190
                       (coe MAlonzo.Code.Ledger.Conway.Certs.d_gState_1228 (coe v1))))))
         (MAlonzo.Code.Ledger.Conway.Gov.Actions.d_votes_894 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Gov.Actions.d_returnAddr_896 (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Gov.Actions.d_expiresIn_898 (coe v2))
      (coe MAlonzo.Code.Ledger.Conway.Gov.Actions.d_action_900 (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Gov.Actions.d_prevAction_902 (coe v2))
-- Ledger.Conway.Ledger.allColdCreds
d_allColdCreds_2528 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_allColdCreds_2528 ~v0 ~v1 v2 v3 = du_allColdCreds_2528 v2 v3
du_allColdCreds_2528 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
du_allColdCreds_2528 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Enact.du_ccCreds_988
         (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_954 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.Conway.Gov.Actions.du_proposedCC_918
                 (coe
                    MAlonzo.Code.Ledger.Conway.Gov.Actions.d_action_900
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2570 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2570
  = C_LEDGER'45'V_2616 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2618 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Ledger._.txcerts
d_txcerts_2592 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_18167 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
d_txcerts_2592 ~v0 ~v1 v2 = du_txcerts_2592 v2
du_txcerts_2592 ::
  T_GeneralizeTel_18167 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
du_txcerts_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2994
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_18143 (coe v0)))
-- Ledger.Conway.Ledger._.txid
d_txid_2598 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_18167 -> AgdaAny
d_txid_2598 ~v0 ~v1 v2 = du_txid_2598 v2
du_txid_2598 :: T_GeneralizeTel_18167 -> AgdaAny
du_txid_2598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3012
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_18143 (coe v0)))
-- Ledger.Conway.Ledger._.txvote
d_txvote_2610 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_18167 ->
  [MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovVote_838]
d_txvote_2610 ~v0 ~v1 v2 = du_txvote_2610 v2
du_txvote_2610 ::
  T_GeneralizeTel_18167 ->
  [MAlonzo.Code.Ledger.Conway.Gov.Actions.T_GovVote_838]
du_txvote_2610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_2998
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_18143 (coe v0)))
-- Ledger.Conway.Ledger._.txwdrls
d_txwdrls_2612 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_18167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2612 ~v0 ~v1 v2 = du_txwdrls_2612 v2
du_txwdrls_2612 ::
  T_GeneralizeTel_18167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2996
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_18143 (coe v0)))
-- Ledger.Conway.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2636 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_LEnv_2388 ->
  T_LState_2412 ->
  [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130] ->
  T_LState_2412 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2636 = erased
-- Ledger.Conway.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_18143 ::
  T_GeneralizeTel_18167 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130
d_'46'generalizedField'45'tx_18143 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_18145 ::
  T_GeneralizeTel_18167 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216
d_'46'generalizedField'45'certState_18145 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_18147 ::
  T_GeneralizeTel_18167 -> AgdaAny
d_'46'generalizedField'45'slot_18147 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_18149 ::
  T_GeneralizeTel_18167 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_'46'generalizedField'45'pp_18149 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_18151 ::
  T_GeneralizeTel_18167 -> Integer
d_'46'generalizedField'45'treasury_18151 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_18153 ::
  T_GeneralizeTel_18167 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
d_'46'generalizedField'45'utxoSt_18153 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_18155 ::
  T_GeneralizeTel_18167 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
d_'46'generalizedField'45'utxoSt''_18155 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_18157 ::
  T_GeneralizeTel_18167 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_18157 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_18159 ::
  T_GeneralizeTel_18167 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942
d_'46'generalizedField'45'enactState_18159 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_18161 ::
  T_GeneralizeTel_18167 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216
d_'46'generalizedField'45'certState''_18161 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_18163 ::
  T_GeneralizeTel_18167 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_18163 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_18165 ::
  T_GeneralizeTel_18167 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_18165 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.GeneralizeTel
d_GeneralizeTel_18167 a0 a1 = ()
data T_GeneralizeTel_18167
  = C_mkGeneralizeTel_18169 MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130
                            MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 AgdaAny
                            MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 Integer
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942
                            MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 (Maybe AgdaAny)
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
