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

module MAlonzo.Code.Ledger.Conway.Specification.Ledger where

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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxow
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Credential
d_Credential_56 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_90 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_90 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1338
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1338
            (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_100 ~v0 = du_DecEq'45'GovRole_100
du_DecEq'45'GovRole_100 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_100
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_960
-- _.GovActionState
d_GovActionState_170 a0 = ()
-- _.GovProposal
d_GovProposal_180 a0 = ()
-- _.GovVote
d_GovVote_186 a0 = ()
-- _.HasPParams
d_HasPParams_220 a0 a1 a2 = ()
-- _.HasUTxO
d_HasUTxO_230 a0 a1 a2 = ()
-- _.PParams
d_PParams_354 a0 = ()
-- _.PParamsOf
d_PParamsOf_362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_460 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312
d_PParamsOf_362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_468
      (coe v0)
-- _.ScriptHash
d_ScriptHash_416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_416 = erased
-- _.Slot
d_Slot_462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_462 = erased
-- _.Tx
d_Tx_490 a0 = ()
-- _.TxBody
d_TxBody_494 a0 = ()
-- _.UTxOOf
d_UTxOOf_514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3100 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3108
      (coe v0)
-- _.Voter
d_Voter_536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Voter_536 = erased
-- _.epoch
d_epoch_570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_570 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1660
         (coe v0))
-- _.GovActionState.action
d_action_810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_934 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_850
d_action_810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_952
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_934 ->
  AgdaAny
d_expiresIn_812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_950
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_934 ->
  AgdaAny
d_prevAction_814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_954
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_934 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_948
      (coe v0)
-- _.GovActionState.votes
d_votes_818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_934 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_946
      (coe v0)
-- _.GovActions.GovActionState
d_GovActionState_864 a0 = ()
-- _.GovActions.GovProposal
d_GovProposal_870 a0 = ()
-- _.GovActions.GovRole
d_GovRole_874 a0 = ()
-- _.GovActions.GovVote
d_GovVote_876 a0 = ()
-- _.GovActions.GovProposal.action
d_action_936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_906 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_850
d_action_936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_920
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_906 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_820
d_anchor_938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_930
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_906 ->
  Integer
d_deposit_940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_926
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_906 ->
  Maybe AgdaAny
d_policy_942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_924
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_906 ->
  AgdaAny
d_prevAction_944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_922
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_906 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_928
      (coe v0)
-- _.GovActions.GovVote.anchor
d_anchor_958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_886 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_820
d_anchor_958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_902
      (coe v0)
-- _.GovActions.GovVote.gid
d_gid_960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_886 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_896
      (coe v0)
-- _.GovActions.GovVote.vote
d_vote_962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_886 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_878
d_vote_962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_900
      (coe v0)
-- _.GovActions.GovVote.voter
d_voter_964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_886 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_898
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1008 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_460 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312
d_PParamsOf_1008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_468
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3100 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3108
      (coe v0)
-- _.PParams.Emax
d_Emax_1136 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_428
      (coe v0)
-- _.PParams.a
d_a_1138 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_400 (coe v0)
-- _.PParams.a0
d_a0_1140 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_432 (coe v0)
-- _.PParams.b
d_b_1142 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_b_1142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_402 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_1144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_444
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1146 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_1146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_442
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1148 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_1148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_412
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1150 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_1150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_434
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1152 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_costmdls_1152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_436
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1154 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_1154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_452
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1156 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_1156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_450
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1158 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_1158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_440
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1160 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_448
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1162 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_1162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_446
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1164 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_1164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_404
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1166 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_392
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1168 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_384
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1170 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_396
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1172 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_1172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_388
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1174 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_1174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_420
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1176 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_1176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_418
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1178 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_1178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_390
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1180 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_1180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_386
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1182 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_1182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_394
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1184 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_416
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1186 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_1186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_426
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1188 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_408
      (coe v0)
-- _.PParams.nopt
d_nopt_1190 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_1190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_430
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1192 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_1192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_406
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1194 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_1194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_438
      (coe v0)
-- _.PParams.prices
d_prices_1196 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_1196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_414
      (coe v0)
-- _.PParams.pv
d_pv_1198 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_398 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1200 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_424
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1202 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_422
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1204 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_410
      (coe v0)
-- _.Tx.body
d_body_1626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116
d_body_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3330
      (coe v0)
-- _.Tx.isValid
d_isValid_1628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318 ->
  Bool
d_isValid_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3336
      (coe v0)
-- _.Tx.txAD
d_txAD_1630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318 ->
  Maybe AgdaAny
d_txAD_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3338
      (coe v0)
-- _.Tx.txsize
d_txsize_1632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318 ->
  Integer
d_txsize_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3334
      (coe v0)
-- _.Tx.wits
d_wits_1634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3296
d_wits_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3332
      (coe v0)
-- _.TxBody.collateral
d_collateral_1638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3188
      (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  Maybe Integer
d_curTreasury_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_curTreasury_3184
      (coe v0)
-- _.TxBody.mint
d_mint_1642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  AgdaAny
d_mint_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3164
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3158
      (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  [AgdaAny]
d_reqSigHash_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSigHash_3190
      (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  Maybe AgdaAny
d_scriptIntHash_1648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntHash_3192
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  Maybe AgdaAny
d_txADhash_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3180
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  Maybe AgdaAny
d_txNetworkId_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3182
      (coe v0)
-- _.TxBody.txcerts
d_txcerts_1654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1086]
d_txcerts_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_3168
      (coe v0)
-- _.TxBody.txdonation
d_txdonation_1656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  Integer
d_txdonation_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdonation_3176
      (coe v0)
-- _.TxBody.txfee
d_txfee_1658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  Integer
d_txfee_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txfee_3162
      (coe v0)
-- _.TxBody.txid
d_txid_1660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  AgdaAny
d_txid_1660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3186
      (coe v0)
-- _.TxBody.txins
d_txins_1662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_3156
      (coe v0)
-- _.TxBody.txouts
d_txouts_1664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_3160
      (coe v0)
-- _.TxBody.txprop
d_txprop_1666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_906]
d_txprop_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txprop_3174
      (coe v0)
-- _.TxBody.txup
d_txup_1668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txup_3178
      (coe v0)
-- _.TxBody.txvldt
d_txvldt_1670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvldt_3166
      (coe v0)
-- _.TxBody.txvote
d_txvote_1672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_886]
d_txvote_1672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3172
      (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3170
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState
d_EnactState_1742 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.EnactState.cc
d_cc_1790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1012 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.constitution
d_constitution_1792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1014
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pparams
d_pparams_1794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1018
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pv
d_pv_1796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1016 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.withdrawals
d_withdrawals_1798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1020
      (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_GovEnv_2316 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1808 = erased
-- Ledger.Conway.Specification.Ledger._.GovState
d_GovState_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  ()
d_GovState_1822 = erased
-- Ledger.Conway.Specification.Ledger._.GovStateOf
d_GovStateOf_1824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2300 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2308
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1826 ~v0 ~v1 = du_HasCast'45'GovEnv_1826
du_HasCast'45'GovEnv_1826 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1826
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.du_HasCast'45'GovEnv_2348
-- Ledger.Conway.Specification.Ledger._.HasGovState
d_HasGovState_1828 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGovState.GovStateOf
d_GovStateOf_1930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2300 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2308
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_1950 ~v0 ~v1 = du_HasCast'45'UTxOEnv_1950
du_HasCast'45'UTxOEnv_1950 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_1950
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOEnv_2244
-- Ledger.Conway.Specification.Ledger._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_1958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1004
d_HasDeposits'45'UTxOState_1958 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_1958
du_HasDeposits'45'UTxOState_1958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1004
du_HasDeposits'45'UTxOState_1958
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2240
-- Ledger.Conway.Specification.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3100
d_HasUTxO'45'UTxOState_1962 ~v0 ~v1 = du_HasUTxO'45'UTxOState_1962
du_HasUTxO'45'UTxOState_1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3100
du_HasUTxO'45'UTxOState_1962
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2242
-- Ledger.Conway.Specification.Ledger._.HasUTxOState
d_HasUTxOState_1964 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOState
d_UTxOState_1986 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOStateOf
d_UTxOStateOf_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2224 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
d_UTxOStateOf_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2232
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2224 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
d_UTxOStateOf_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2232
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.deposits
d_deposits_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2214
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.donations
d_donations_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200 ->
  Integer
d_donations_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2216
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.fees
d_fees_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200 ->
  Integer
d_fees_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2212 (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.utxo
d_utxo_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2210 (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2132 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1122 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1086] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2184 = erased
-- Ledger.Conway.Specification.Ledger._.CertState
d_CertState_2206 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.CertStateOf
d_CertStateOf_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294
d_CertStateOf_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1322
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DepositsOf
d_DepositsOf_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1004 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1012
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2262 ~v0 ~v1 = du_HasCast'45'CertEnv_2262
du_HasCast'45'CertEnv_2262 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2262
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1368
-- Ledger.Conway.Specification.Ledger._.HasCertState
d_HasCertState_2274 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDeposits
d_HasDeposits_2294 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.CertState.dState
d_dState_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1168
d_dState_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1302
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.gState
d_gState_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1260
d_gState_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1306
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.pState
d_pState_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1228
d_pState_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1304
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCertState.CertStateOf
d_CertStateOf_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294
d_CertStateOf_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1322
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDeposits.DepositsOf
d_DepositsOf_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1004 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1012
      (coe v0)
-- Ledger.Conway.Specification.Ledger.LEnv
d_LEnv_2540 a0 a1 = ()
data T_LEnv_2540
  = C_constructor_2562 AgdaAny (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1000
                       Integer
-- Ledger.Conway.Specification.Ledger.LEnv.slot
d_slot_2552 :: T_LEnv_2540 -> AgdaAny
d_slot_2552 v0
  = case coe v0 of
      C_constructor_2562 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.ppolicy
d_ppolicy_2554 :: T_LEnv_2540 -> Maybe AgdaAny
d_ppolicy_2554 v0
  = case coe v0 of
      C_constructor_2562 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.pparams
d_pparams_2556 ::
  T_LEnv_2540 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312
d_pparams_2556 v0
  = case coe v0 of
      C_constructor_2562 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.enactState
d_enactState_2558 ::
  T_LEnv_2540 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1000
d_enactState_2558 v0
  = case coe v0 of
      C_constructor_2562 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.treasury
d_treasury_2560 :: T_LEnv_2540 -> Integer
d_treasury_2560 v0
  = case coe v0 of
      C_constructor_2562 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasPParams-LEnv
d_HasPParams'45'LEnv_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_460
d_HasPParams'45'LEnv_2564 ~v0 ~v1 = du_HasPParams'45'LEnv_2564
du_HasPParams'45'LEnv_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_460
du_HasPParams'45'LEnv_2564
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_470
      (coe (\ v0 -> d_pparams_2556 (coe v0)))
-- Ledger.Conway.Specification.Ledger.LState
d_LState_2566 a0 a1 = ()
data T_LState_2566
  = C_'10214'_'44'_'44'_'10215''737'_2580 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294
-- Ledger.Conway.Specification.Ledger.LState.utxoSt
d_utxoSt_2574 ::
  T_LState_2566 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
d_utxoSt_2574 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2580 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.govSt
d_govSt_2576 ::
  T_LState_2566 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2576 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2580 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.certState
d_certState_2578 ::
  T_LState_2566 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294
d_certState_2578 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2580 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasLState
d_HasLState_2586 a0 a1 a2 a3 = ()
newtype T_HasLState_2586
  = C_constructor_2596 (AgdaAny -> T_LState_2566)
-- Ledger.Conway.Specification.Ledger.HasLState.LStateOf
d_LStateOf_2594 :: T_HasLState_2586 -> AgdaAny -> T_LState_2566
d_LStateOf_2594 v0
  = case coe v0 of
      C_constructor_2596 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger._.LStateOf
d_LStateOf_2600 :: T_HasLState_2586 -> AgdaAny -> T_LState_2566
d_LStateOf_2600 v0 = coe d_LStateOf_2594 (coe v0)
-- Ledger.Conway.Specification.Ledger.HasUTxOState-LState
d_HasUTxOState'45'LState_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2224
d_HasUTxOState'45'LState_2602 ~v0 ~v1
  = du_HasUTxOState'45'LState_2602
du_HasUTxOState'45'LState_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2224
du_HasUTxOState'45'LState_2602
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2234
      (coe (\ v0 -> d_utxoSt_2574 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasUTxO-LState
d_HasUTxO'45'LState_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3100
d_HasUTxO'45'LState_2604 ~v0 ~v1 = du_HasUTxO'45'LState_2604
du_HasUTxO'45'LState_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3100
du_HasUTxO'45'LState_2604
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3110
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3108
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2242)
              (d_utxoSt_2574 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasGovState-LState
d_HasGovState'45'LState_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2300
d_HasGovState'45'LState_2606 ~v0 ~v1
  = du_HasGovState'45'LState_2606
du_HasGovState'45'LState_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2300
du_HasGovState'45'LState_2606
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.C_constructor_2310
      (coe (\ v0 -> d_govSt_2576 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasCertState-LState
d_HasCertState'45'LState_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1314
d_HasCertState'45'LState_2608 ~v0 ~v1
  = du_HasCertState'45'LState_2608
du_HasCertState'45'LState_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1314
du_HasCertState'45'LState_2608
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1324
      (coe (\ v0 -> d_certState_2578 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasDeposits-LState
d_HasDeposits'45'LState_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1004
d_HasDeposits'45'LState_2610 ~v0 ~v1
  = du_HasDeposits'45'LState_2610
du_HasDeposits'45'LState_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1004
du_HasDeposits'45'LState_2610
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1014
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1012
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2240)
              (d_utxoSt_2574 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasCast-LEnv
d_HasCast'45'LEnv_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2612 ~v0 ~v1 = du_HasCast'45'LEnv_2612
du_HasCast'45'LEnv_2612 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2612
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
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
                                 (2540 :: Integer) (11007941034284287304 :: Integer)
                                 "Ledger.Conway.Specification.Ledger.LEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (462 :: Integer) (11007941034284287304 :: Integer) "_.Slot"
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
                                    (2540 :: Integer) (11007941034284287304 :: Integer)
                                    "Ledger.Conway.Specification.Ledger.LEnv"
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
                                                (416 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2540 :: Integer) (11007941034284287304 :: Integer)
                                       "Ledger.Conway.Specification.Ledger.LEnv"
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
                                       (354 :: Integer) (11007941034284287304 :: Integer)
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
                                          (2540 :: Integer) (11007941034284287304 :: Integer)
                                          "Ledger.Conway.Specification.Ledger.LEnv"
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
                                          (1742 :: Integer) (11007941034284287304 :: Integer)
                                          "Ledger.Conway.Specification.Ledger._.EnactState"
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
                                             (2540 :: Integer) (11007941034284287304 :: Integer)
                                             "Ledger.Conway.Specification.Ledger.LEnv"
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
         (coe C_constructor_2562))
-- Ledger.Conway.Specification.Ledger.HasCast-LState
d_HasCast'45'LState_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2614 ~v0 ~v1 = du_HasCast'45'LState_2614
du_HasCast'45'LState_2614 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2614
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
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
                                 (2566 :: Integer) (11007941034284287304 :: Integer)
                                 "Ledger.Conway.Specification.Ledger.LState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1986 :: Integer) (11007941034284287304 :: Integer)
                                 "Ledger.Conway.Specification.Ledger._.UTxOState"
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
                                    (2566 :: Integer) (11007941034284287304 :: Integer)
                                    "Ledger.Conway.Specification.Ledger.LState"
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
                                    (1822 :: Integer) (11007941034284287304 :: Integer)
                                    "Ledger.Conway.Specification.Ledger._.GovState"
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
                                       (2566 :: Integer) (11007941034284287304 :: Integer)
                                       "Ledger.Conway.Specification.Ledger.LState"
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
                                       (2206 :: Integer) (11007941034284287304 :: Integer)
                                       "Ledger.Conway.Specification.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2580))
-- Ledger.Conway.Specification.Ledger.txgov
d_txgov_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2616 ~v0 ~v1 v2 = du_txgov_2616 v2
du_txgov_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2616 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txprop_3174
            (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3172
            (coe v0)))
-- Ledger.Conway.Specification.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2664 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2664 v0 v2 v3
du_rmOrphanDRepVotes_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2664 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_124
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
         (coe du_go_2680 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Conway.Specification.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_ifDRepRegistered_2674 = erased
-- Ledger.Conway.Specification.Ledger._.go
d_go_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_934 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_934
d_go_2680 v0 ~v1 v2 ~v3 v4 = du_go_2680 v0 v2 v4
du_go_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_934 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_934
du_go_2680 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_956
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1208
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_960)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_804))
              (coe
                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1338
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1338
                          (coe v0))))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_562
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1266
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1306
                          (coe v1))))))
         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_946
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_948
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_950
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_952
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_954
         (coe v2))
-- Ledger.Conway.Specification.Ledger.allColdCreds
d_allColdCreds_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1000 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2684 ~v0 ~v1 v2 v3 = du_allColdCreds_2684 v2 v3
du_allColdCreds_2684 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1000 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2684 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__682
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1050
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1012 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_510
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_972
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_952
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_430
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2726 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2726
  = C_LEDGER'45'V_2772 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2774 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ledger._.txcerts
d_txcerts_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_18633 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1086]
d_txcerts_2748 ~v0 ~v1 v2 = du_txcerts_2748 v2
du_txcerts_2748 ::
  T_GeneralizeTel_18633 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1086]
du_txcerts_2748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_3168
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3330
         (coe d_'46'generalizedField'45'tx_18609 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txid
d_txid_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_18633 -> AgdaAny
d_txid_2754 ~v0 ~v1 v2 = du_txid_2754 v2
du_txid_2754 :: T_GeneralizeTel_18633 -> AgdaAny
du_txid_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3186
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3330
         (coe d_'46'generalizedField'45'tx_18609 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txvote
d_txvote_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_18633 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_886]
d_txvote_2766 ~v0 ~v1 v2 = du_txvote_2766 v2
du_txvote_2766 ::
  T_GeneralizeTel_18633 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_886]
du_txvote_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3172
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3330
         (coe d_'46'generalizedField'45'tx_18609 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txwdrls
d_txwdrls_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_18633 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2768 ~v0 ~v1 v2 = du_txwdrls_2768 v2
du_txwdrls_2768 ::
  T_GeneralizeTel_18633 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3170
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3330
         (coe d_'46'generalizedField'45'tx_18609 (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_LEnv_2540 ->
  T_LState_2566 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318] ->
  T_LState_2566 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2792 = erased
-- Ledger.Conway.Specification.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_18609 ::
  T_GeneralizeTel_18633 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318
d_'46'generalizedField'45'tx_18609 v0
  = case coe v0 of
      C_mkGeneralizeTel_18635 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_18611 ::
  T_GeneralizeTel_18633 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294
d_'46'generalizedField'45'certState_18611 v0
  = case coe v0 of
      C_mkGeneralizeTel_18635 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_18613 ::
  T_GeneralizeTel_18633 -> AgdaAny
d_'46'generalizedField'45'slot_18613 v0
  = case coe v0 of
      C_mkGeneralizeTel_18635 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_18615 ::
  T_GeneralizeTel_18633 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312
d_'46'generalizedField'45'pp_18615 v0
  = case coe v0 of
      C_mkGeneralizeTel_18635 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_18617 ::
  T_GeneralizeTel_18633 -> Integer
d_'46'generalizedField'45'treasury_18617 v0
  = case coe v0 of
      C_mkGeneralizeTel_18635 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_18619 ::
  T_GeneralizeTel_18633 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
d_'46'generalizedField'45'utxoSt_18619 v0
  = case coe v0 of
      C_mkGeneralizeTel_18635 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_18621 ::
  T_GeneralizeTel_18633 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
d_'46'generalizedField'45'utxoSt''_18621 v0
  = case coe v0 of
      C_mkGeneralizeTel_18635 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_18623 ::
  T_GeneralizeTel_18633 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_18623 v0
  = case coe v0 of
      C_mkGeneralizeTel_18635 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_18625 ::
  T_GeneralizeTel_18633 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1000
d_'46'generalizedField'45'enactState_18625 v0
  = case coe v0 of
      C_mkGeneralizeTel_18635 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_18627 ::
  T_GeneralizeTel_18633 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294
d_'46'generalizedField'45'certState''_18627 v0
  = case coe v0 of
      C_mkGeneralizeTel_18635 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_18629 ::
  T_GeneralizeTel_18633 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_18629 v0
  = case coe v0 of
      C_mkGeneralizeTel_18635 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_18631 ::
  T_GeneralizeTel_18633 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_18631 v0
  = case coe v0 of
      C_mkGeneralizeTel_18635 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.GeneralizeTel
d_GeneralizeTel_18633 a0 a1 = ()
data T_GeneralizeTel_18633
  = C_mkGeneralizeTel_18635 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294
                            AgdaAny
                            MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312
                            Integer
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1000
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294
                            (Maybe AgdaAny) [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
