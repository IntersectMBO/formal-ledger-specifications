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
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1302 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1302 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_92 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_92 ~v0 = du_DecEq'45'GovRole_92
du_DecEq'45'GovRole_92 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_92
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_892
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
d_PParams_296 a0 = ()
-- _.PParamsOf
d_PParamsOf_300 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_428 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_PParamsOf_300 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_436 (coe v0)
-- _.ScriptHash
d_ScriptHash_356 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ScriptHash_356 = erased
-- _.Slot
d_Slot_400 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Slot_400 = erased
-- _.Tx
d_Tx_428 a0 = ()
-- _.TxBody
d_TxBody_430 a0 = ()
-- _.UTxOOf
d_UTxOOf_446 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2996 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_446 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_3004 (coe v0)
-- _.Voter
d_Voter_468 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Voter_468 = erased
-- _.epoch
d_epoch_502 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> AgdaAny
d_epoch_502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1606
         (coe v0))
-- _.GovActionState.action
d_action_748 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_868 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_788
d_action_748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_886 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_750 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_868 ->
  AgdaAny
d_expiresIn_750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_expiresIn_884
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_752 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_868 ->
  AgdaAny
d_prevAction_752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_888
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_754 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_868 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_882
      (coe v0)
-- _.GovActionState.votes
d_votes_756 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_votes_880 (coe v0)
-- _.GovProposal.action
d_action_792 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_842 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_788
d_action_792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_856 (coe v0)
-- _.GovProposal.anchor
d_anchor_794 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_842 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_760
d_anchor_794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_866 (coe v0)
-- _.GovProposal.deposit
d_deposit_796 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_842 ->
  Integer
d_deposit_796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_deposit_862 (coe v0)
-- _.GovProposal.policy
d_policy_798 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_842 ->
  Maybe AgdaAny
d_policy_798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_860 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_800 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_842 ->
  AgdaAny
d_prevAction_800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_858
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_802 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_842 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_864
      (coe v0)
-- _.GovVote.anchor
d_anchor_814 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_824 ->
  Maybe MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_760
d_anchor_814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_840 (coe v0)
-- _.GovVote.gid
d_gid_816 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_824 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gid_834 (coe v0)
-- _.GovVote.vote
d_vote_818 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_824 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Vote_816
d_vote_818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_vote_838 (coe v0)
-- _.GovVote.voter
d_voter_820 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_824 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_voter_836 (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_846 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_850 a0 = ()
-- _.GovernanceActions.GovRole
d_GovRole_852 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_854 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_936 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_428 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_PParamsOf_936 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_436 (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_944 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2996 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_944 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_3004 (coe v0)
-- _.PParams.Emax
d_Emax_1064 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_Emax_1064 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_398 (coe v0)
-- _.PParams.a
d_a_1066 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_a_1066 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_370 (coe v0)
-- _.PParams.a0
d_a0_1068 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1068 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_402 (coe v0)
-- _.PParams.b
d_b_1070 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_b_1070 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_372 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1072 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_ccMaxTermLength_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_414 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1074 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_ccMinSize_1074 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_412 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_coinsPerUTxOByte_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_382 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1078 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_collateralPercentage_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_404
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_costmdls_1080 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_406 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1082 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_drepActivity_1082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_422 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_drepDeposit_1084 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_420 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218
d_drepThresholds_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_410 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_govActionDeposit_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_418 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1090 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_govActionLifetime_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_416 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_keyDeposit_1092 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_374 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1094 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_maxBlockExUnits_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_362 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxBlockSize_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_354 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1098 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxCollateralInputs_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_366
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxHeaderSize_1100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_358 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1102 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxRefScriptSizePerBlock_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_390
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxRefScriptSizePerTx_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_388
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1106 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_maxTxExUnits_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_360 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxTxSize_1108 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_356 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1110 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxValSize_1110 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_364 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1112 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_386
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1114 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_minUTxOValue_1114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_396 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1116 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_378 (coe v0)
-- _.PParams.nopt
d_nopt_1118 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_nopt_1118 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_400 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1120 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_poolDeposit_1120 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_376 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1122 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_260
d_poolThresholds_1122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_408 (coe v0)
-- _.PParams.prices
d_prices_1124 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_prices_1124 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_384 (coe v0)
-- _.PParams.pv
d_pv_1126 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1126 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_368 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1128 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_394
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1130 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_refScriptCostStride_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_392
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1132 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1132 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_380 (coe v0)
-- _.Tx.body
d_body_1546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3202 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010
d_body_1546 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3212 (coe v0)
-- _.Tx.isValid
d_isValid_1548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3202 -> Bool
d_isValid_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3216 (coe v0)
-- _.Tx.txAD
d_txAD_1550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3202 -> Maybe AgdaAny
d_txAD_1550 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3218 (coe v0)
-- _.Tx.wits
d_wits_1552 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3202 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3182
d_wits_1552 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3214 (coe v0)
-- _.TxBody.collateral
d_collateral_1556 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3086 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1558 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  Maybe Integer
d_curTreasury_1558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3080 (coe v0)
-- _.TxBody.mint
d_mint_1560 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 -> AgdaAny
d_mint_1560 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3060 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3054 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1564 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 -> [AgdaAny]
d_reqSigHash_1564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3088 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1566 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  Maybe AgdaAny
d_scriptIntHash_1566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptIntHash_3090
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1568 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  Maybe AgdaAny
d_txADhash_1568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3076 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1570 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  Maybe AgdaAny
d_txNetworkId_1570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3078 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1572 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1010]
d_txcerts_1572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3064 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1574 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 -> Integer
d_txdonation_1574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3072 (coe v0)
-- _.TxBody.txfee
d_txfee_1576 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 -> Integer
d_txfee_1576 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3058 (coe v0)
-- _.TxBody.txid
d_txid_1578 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 -> AgdaAny
d_txid_1578 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3084 (coe v0)
-- _.TxBody.txins
d_txins_1580 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1580 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3052 (coe v0)
-- _.TxBody.txouts
d_txouts_1582 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1582 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3056 (coe v0)
-- _.TxBody.txprop
d_txprop_1584 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_842]
d_txprop_1584 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3070 (coe v0)
-- _.TxBody.txsize
d_txsize_1586 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 -> Integer
d_txsize_1586 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3082 (coe v0)
-- _.TxBody.txup
d_txup_1588 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1588 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txup_3074 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1590 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1590 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3062 (coe v0)
-- _.TxBody.txvote
d_txvote_1592 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_824]
d_txvote_1592 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3068 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1594 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3066 (coe v0)
-- Ledger.Conway.Ledger._.EnactState
d_EnactState_1674 a0 a1 = ()
-- Ledger.Conway.Ledger._.EnactState.cc
d_cc_1718 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1718 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_942 (coe v0)
-- Ledger.Conway.Ledger._.EnactState.constitution
d_constitution_1720 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1720 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_constitution_944 (coe v0)
-- Ledger.Conway.Ledger._.EnactState.pparams
d_pparams_1722 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1722 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_948 (coe v0)
-- Ledger.Conway.Ledger._.EnactState.pv
d_pv_1724 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1724 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_pv_946 (coe v0)
-- Ledger.Conway.Ledger._.EnactState.withdrawals
d_withdrawals_1726 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1726 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_withdrawals_950 (coe v0)
-- Ledger.Conway.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1736 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Gov.T_GovEnv_2202 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1736 = erased
-- Ledger.Conway.Ledger._.GovState
d_GovState_1748 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 -> ()
d_GovState_1748 = erased
-- Ledger.Conway.Ledger._.GovStateOf
d_GovStateOf_1750 ::
  MAlonzo.Code.Ledger.Conway.Gov.T_HasGovState_2188 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1750 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.d_GovStateOf_2196 (coe v0)
-- Ledger.Conway.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1752 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1752 ~v0 ~v1 = du_HasCast'45'GovEnv_1752
du_HasCast'45'GovEnv_1752 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1752
  = coe MAlonzo.Code.Ledger.Conway.Gov.du_HasCast'45'GovEnv_2232
-- Ledger.Conway.Ledger._.HasGovState
d_HasGovState_1754 a0 a1 a2 a3 = ()
-- Ledger.Conway.Ledger._.HasGovState.GovStateOf
d_GovStateOf_1854 ::
  MAlonzo.Code.Ledger.Conway.Gov.T_HasGovState_2188 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1854 v0
  = coe MAlonzo.Code.Ledger.Conway.Gov.d_GovStateOf_2196 (coe v0)
-- Ledger.Conway.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_1874 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_1874 ~v0 ~v1 = du_HasCast'45'UTxOEnv_1874
du_HasCast'45'UTxOEnv_1874 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_1874
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_HasCast'45'UTxOEnv_2340
-- Ledger.Conway.Ledger._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_1882 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_936
d_HasDeposits'45'UTxOState_1882 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_1882
du_HasDeposits'45'UTxOState_1882 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_936
du_HasDeposits'45'UTxOState_1882
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_HasDeposits'45'UTxOState_2336
-- Ledger.Conway.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_1886 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2996
d_HasUTxO'45'UTxOState_1886 ~v0 ~v1 = du_HasUTxO'45'UTxOState_1886
du_HasUTxO'45'UTxOState_1886 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2996
du_HasUTxO'45'UTxOState_1886
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_HasUTxO'45'UTxOState_2338
-- Ledger.Conway.Ledger._.HasUTxOState
d_HasUTxOState_1888 a0 a1 a2 a3 = ()
-- Ledger.Conway.Ledger._.UTxOState
d_UTxOState_1906 a0 a1 = ()
-- Ledger.Conway.Ledger._.UTxOStateOf
d_UTxOStateOf_1908 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_HasUTxOState_2322 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
d_UTxOStateOf_1908 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_UTxOStateOf_2330 (coe v0)
-- Ledger.Conway.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2012 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_HasUTxOState_2322 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
d_UTxOStateOf_2012 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_UTxOStateOf_2330 (coe v0)
-- Ledger.Conway.Ledger._.UTxOState.deposits
d_deposits_2024 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2024 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_deposits_2312 (coe v0)
-- Ledger.Conway.Ledger._.UTxOState.donations
d_donations_2026 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298 -> Integer
d_donations_2026 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_donations_2314 (coe v0)
-- Ledger.Conway.Ledger._.UTxOState.fees
d_fees_2028 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298 -> Integer
d_fees_2028 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_fees_2310 (coe v0)
-- Ledger.Conway.Ledger._.UTxOState.utxo
d_utxo_2030 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2030 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2308 (coe v0)
-- Ledger.Conway.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2068 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2130 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1046 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1010] ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2130 = erased
-- Ledger.Conway.Ledger._.CertState
d_CertState_2150 a0 a1 = ()
-- Ledger.Conway.Ledger._.CertStateOf
d_CertStateOf_2152 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1224 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204
d_CertStateOf_2152 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_CertStateOf_1232 (coe v0)
-- Ledger.Conway.Ledger._.DepositsOf
d_DepositsOf_2182 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_936 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2182 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_944 (coe v0)
-- Ledger.Conway.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2198 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2198 ~v0 ~v1 = du_HasCast'45'CertEnv_2198
du_HasCast'45'CertEnv_2198 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2198
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'CertEnv_1274
-- Ledger.Conway.Ledger._.HasCertState
d_HasCertState_2210 a0 a1 a2 a3 = ()
-- Ledger.Conway.Ledger._.HasDeposits
d_HasDeposits_2224 a0 a1 a2 a3 = ()
-- Ledger.Conway.Ledger._.CertState.dState
d_dState_2344 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DState_1088
d_dState_2344 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_dState_1212 (coe v0)
-- Ledger.Conway.Ledger._.CertState.gState
d_gState_2346 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_GState_1172
d_gState_2346 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_gState_1216 (coe v0)
-- Ledger.Conway.Ledger._.CertState.pState
d_pState_2348 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1144
d_pState_2348 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pState_1214 (coe v0)
-- Ledger.Conway.Ledger._.HasCertState.CertStateOf
d_CertStateOf_2402 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1224 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204
d_CertStateOf_2402 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_CertStateOf_1232 (coe v0)
-- Ledger.Conway.Ledger._.HasDeposits.DepositsOf
d_DepositsOf_2414 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_936 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2414 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_944 (coe v0)
-- Ledger.Conway.Ledger.LEnv
d_LEnv_2454 a0 a1 = ()
data T_LEnv_2454
  = C_LEnv'46'constructor_6603 AgdaAny (Maybe AgdaAny)
                               MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
                               MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_930 Integer
-- Ledger.Conway.Ledger.LEnv.slot
d_slot_2466 :: T_LEnv_2454 -> AgdaAny
d_slot_2466 v0
  = case coe v0 of
      C_LEnv'46'constructor_6603 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LEnv.ppolicy
d_ppolicy_2468 :: T_LEnv_2454 -> Maybe AgdaAny
d_ppolicy_2468 v0
  = case coe v0 of
      C_LEnv'46'constructor_6603 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LEnv.pparams
d_pparams_2470 ::
  T_LEnv_2454 -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_pparams_2470 v0
  = case coe v0 of
      C_LEnv'46'constructor_6603 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LEnv.enactState
d_enactState_2472 ::
  T_LEnv_2454 -> MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_930
d_enactState_2472 v0
  = case coe v0 of
      C_LEnv'46'constructor_6603 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LEnv.treasury
d_treasury_2474 :: T_LEnv_2454 -> Integer
d_treasury_2474 v0
  = case coe v0 of
      C_LEnv'46'constructor_6603 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.HasPParams-LEnv
d_HasPParams'45'LEnv_2476 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_428
d_HasPParams'45'LEnv_2476 ~v0 ~v1 = du_HasPParams'45'LEnv_2476
du_HasPParams'45'LEnv_2476 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_428
du_HasPParams'45'LEnv_2476
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.C_HasPParams'46'constructor_9331
      (coe (\ v0 -> d_pparams_2470 (coe v0)))
-- Ledger.Conway.Ledger.LState
d_LState_2478 a0 a1 = ()
data T_LState_2478
  = C_'10214'_'44'_'44'_'10215''737'_2492 MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204
-- Ledger.Conway.Ledger.LState.utxoSt
d_utxoSt_2486 ::
  T_LState_2478 -> MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
d_utxoSt_2486 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2492 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LState.govSt
d_govSt_2488 ::
  T_LState_2478 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2488 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2492 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.LState.certState
d_certState_2490 ::
  T_LState_2478 -> MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204
d_certState_2490 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2492 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.HasLState
d_HasLState_2498 a0 a1 a2 a3 = ()
newtype T_HasLState_2498
  = C_HasLState'46'constructor_6999 (AgdaAny -> T_LState_2478)
-- Ledger.Conway.Ledger.HasLState.LStateOf
d_LStateOf_2506 :: T_HasLState_2498 -> AgdaAny -> T_LState_2478
d_LStateOf_2506 v0
  = case coe v0 of
      C_HasLState'46'constructor_6999 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger._.LStateOf
d_LStateOf_2510 :: T_HasLState_2498 -> AgdaAny -> T_LState_2478
d_LStateOf_2510 v0 = coe d_LStateOf_2506 (coe v0)
-- Ledger.Conway.Ledger.HasUTxOState-LState
d_HasUTxOState'45'LState_2512 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_HasUTxOState_2322
d_HasUTxOState'45'LState_2512 ~v0 ~v1
  = du_HasUTxOState'45'LState_2512
du_HasUTxOState'45'LState_2512 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_HasUTxOState_2322
du_HasUTxOState'45'LState_2512
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.C_HasUTxOState'46'constructor_18469
      (coe (\ v0 -> d_utxoSt_2486 (coe v0)))
-- Ledger.Conway.Ledger.HasUTxO-LState
d_HasUTxO'45'LState_2514 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2996
d_HasUTxO'45'LState_2514 ~v0 ~v1 = du_HasUTxO'45'LState_2514
du_HasUTxO'45'LState_2514 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2996
du_HasUTxO'45'LState_2514
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.C_HasUTxO'46'constructor_18643
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_3004
              (coe MAlonzo.Code.Ledger.Conway.Utxo.du_HasUTxO'45'UTxOState_2338)
              (d_utxoSt_2486 (coe v0))))
-- Ledger.Conway.Ledger.HasGovState-LState
d_HasGovState'45'LState_2516 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Gov.T_HasGovState_2188
d_HasGovState'45'LState_2516 ~v0 ~v1
  = du_HasGovState'45'LState_2516
du_HasGovState'45'LState_2516 ::
  MAlonzo.Code.Ledger.Conway.Gov.T_HasGovState_2188
du_HasGovState'45'LState_2516
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.C_HasGovState'46'constructor_4461
      (coe (\ v0 -> d_govSt_2488 (coe v0)))
-- Ledger.Conway.Ledger.HasCertState-LState
d_HasCertState'45'LState_2518 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1224
d_HasCertState'45'LState_2518 ~v0 ~v1
  = du_HasCertState'45'LState_2518
du_HasCertState'45'LState_2518 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1224
du_HasCertState'45'LState_2518
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.C_HasCertState'46'constructor_19997
      (coe (\ v0 -> d_certState_2490 (coe v0)))
-- Ledger.Conway.Ledger.HasDeposits-LState
d_HasDeposits'45'LState_2520 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_936
d_HasDeposits'45'LState_2520 ~v0 ~v1
  = du_HasDeposits'45'LState_2520
du_HasDeposits'45'LState_2520 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_936
du_HasDeposits'45'LState_2520
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.C_HasDeposits'46'constructor_3025
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_944
              (coe
                 MAlonzo.Code.Ledger.Conway.Utxo.du_HasDeposits'45'UTxOState_2336)
              (d_utxoSt_2486 (coe v0))))
-- Ledger.Conway.Ledger.HasCast-LEnv
d_HasCast'45'LEnv_2522 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2522 ~v0 ~v1 = du_HasCast'45'LEnv_2522
du_HasCast'45'LEnv_2522 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2522
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
                                 (2454 :: Integer) (14664859526836954062 :: Integer)
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
                                 (400 :: Integer) (14664859526836954062 :: Integer) "_.Slot"
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
                                    (2454 :: Integer) (14664859526836954062 :: Integer)
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
                                                (356 :: Integer) (14664859526836954062 :: Integer)
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
                                       (2454 :: Integer) (14664859526836954062 :: Integer)
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
                                       (296 :: Integer) (14664859526836954062 :: Integer)
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
                                          (2454 :: Integer) (14664859526836954062 :: Integer)
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
                                          (1674 :: Integer) (14664859526836954062 :: Integer)
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
                                             (2454 :: Integer) (14664859526836954062 :: Integer)
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
         (coe C_LEnv'46'constructor_6603))
-- Ledger.Conway.Ledger.HasCast-LState
d_HasCast'45'LState_2524 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2524 ~v0 ~v1 = du_HasCast'45'LState_2524
du_HasCast'45'LState_2524 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2524
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
                                 (2478 :: Integer) (14664859526836954062 :: Integer)
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
                                 (1906 :: Integer) (14664859526836954062 :: Integer)
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
                                    (2478 :: Integer) (14664859526836954062 :: Integer)
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
                                    (1748 :: Integer) (14664859526836954062 :: Integer)
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
                                       (2478 :: Integer) (14664859526836954062 :: Integer)
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
                                       (2150 :: Integer) (14664859526836954062 :: Integer)
                                       "Ledger.Conway.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2492))
-- Ledger.Conway.Ledger.txgov
d_txgov_2526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2526 ~v0 ~v1 v2 = du_txgov_2526 v2
du_txgov_2526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2526 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3070 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3068 (coe v0)))
-- Ledger.Conway.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2576 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2576 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2576 v0 v2 v3
du_rmOrphanDRepVotes_2576 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2576 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_go_2592 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Conway.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2586 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_ifDRepRegistered_2586 = erased
-- Ledger.Conway.Ledger._.go
d_go_2592 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_868 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_868
d_go_2592 v0 ~v1 v2 ~v3 v4 = du_go_2592 v0 v2 v4
du_go_2592 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_868 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_868
du_go_2592 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_GovActionState'46'constructor_5247
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe
                    MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_892)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe MAlonzo.Code.Ledger.Conway.GovernanceActions.C_DRep_744))
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
                             MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1302 (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1302 (coe v0))))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_548
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1470
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Certs.d_dreps_1178
                       (coe MAlonzo.Code.Ledger.Conway.Certs.d_gState_1216 (coe v1))))))
         (MAlonzo.Code.Ledger.Conway.GovernanceActions.d_votes_880
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_882
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.GovernanceActions.d_expiresIn_884
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_886 (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_888
         (coe v2))
-- Ledger.Conway.Ledger.allColdCreds
d_allColdCreds_2596 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_930 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_allColdCreds_2596 ~v0 ~v1 v2 v3 = du_allColdCreds_2596 v2 v3
du_allColdCreds_2596 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_930 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
du_allColdCreds_2596 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Enact.du_ccCreds_976
         (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_942 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.Conway.GovernanceActions.du_proposedCC_904
                 (coe
                    MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_886
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2638 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2638
  = C_LEDGER'45'V_2686 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2688 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Ledger._.txcerts
d_txcerts_2660 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_18455 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1010]
d_txcerts_2660 ~v0 ~v1 v2 = du_txcerts_2660 v2
du_txcerts_2660 ::
  T_GeneralizeTel_18455 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1010]
du_txcerts_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3064
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3212
         (coe d_'46'generalizedField'45'tx_18431 (coe v0)))
-- Ledger.Conway.Ledger._.txid
d_txid_2666 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_18455 -> AgdaAny
d_txid_2666 ~v0 ~v1 v2 = du_txid_2666 v2
du_txid_2666 :: T_GeneralizeTel_18455 -> AgdaAny
du_txid_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3084
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3212
         (coe d_'46'generalizedField'45'tx_18431 (coe v0)))
-- Ledger.Conway.Ledger._.txvote
d_txvote_2680 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_18455 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_824]
d_txvote_2680 ~v0 ~v1 v2 = du_txvote_2680 v2
du_txvote_2680 ::
  T_GeneralizeTel_18455 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_824]
du_txvote_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3068
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3212
         (coe d_'46'generalizedField'45'tx_18431 (coe v0)))
-- Ledger.Conway.Ledger._.txwdrls
d_txwdrls_2682 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_18455 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2682 ~v0 ~v1 v2 = du_txwdrls_2682 v2
du_txwdrls_2682 ::
  T_GeneralizeTel_18455 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3066
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3212
         (coe d_'46'generalizedField'45'tx_18431 (coe v0)))
-- Ledger.Conway.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2706 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_LEnv_2454 ->
  T_LState_2478 ->
  [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3202] ->
  T_LState_2478 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2706 = erased
-- Ledger.Conway.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_18431 ::
  T_GeneralizeTel_18455 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3202
d_'46'generalizedField'45'tx_18431 v0
  = case coe v0 of
      C_mkGeneralizeTel_18457 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_18433 ::
  T_GeneralizeTel_18455 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204
d_'46'generalizedField'45'certState_18433 v0
  = case coe v0 of
      C_mkGeneralizeTel_18457 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_18435 ::
  T_GeneralizeTel_18455 -> AgdaAny
d_'46'generalizedField'45'slot_18435 v0
  = case coe v0 of
      C_mkGeneralizeTel_18457 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_18437 ::
  T_GeneralizeTel_18455 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_'46'generalizedField'45'pp_18437 v0
  = case coe v0 of
      C_mkGeneralizeTel_18457 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_18439 ::
  T_GeneralizeTel_18455 -> Integer
d_'46'generalizedField'45'treasury_18439 v0
  = case coe v0 of
      C_mkGeneralizeTel_18457 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_18441 ::
  T_GeneralizeTel_18455 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
d_'46'generalizedField'45'utxoSt_18441 v0
  = case coe v0 of
      C_mkGeneralizeTel_18457 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_18443 ::
  T_GeneralizeTel_18455 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
d_'46'generalizedField'45'utxoSt''_18443 v0
  = case coe v0 of
      C_mkGeneralizeTel_18457 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_18445 ::
  T_GeneralizeTel_18455 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_18445 v0
  = case coe v0 of
      C_mkGeneralizeTel_18457 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_18447 ::
  T_GeneralizeTel_18455 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_930
d_'46'generalizedField'45'enactState_18447 v0
  = case coe v0 of
      C_mkGeneralizeTel_18457 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_18449 ::
  T_GeneralizeTel_18455 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204
d_'46'generalizedField'45'certState''_18449 v0
  = case coe v0 of
      C_mkGeneralizeTel_18457 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_18451 ::
  T_GeneralizeTel_18455 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_18451 v0
  = case coe v0 of
      C_mkGeneralizeTel_18457 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_18453 ::
  T_GeneralizeTel_18455 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_18453 v0
  = case coe v0 of
      C_mkGeneralizeTel_18457 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Ledger.GeneralizeTel
d_GeneralizeTel_18455 a0 a1 = ()
data T_GeneralizeTel_18455
  = C_mkGeneralizeTel_18457 MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3202
                            MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204 AgdaAny
                            MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 Integer
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_930
                            MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204 (Maybe AgdaAny)
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
