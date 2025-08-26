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
d_Credential_48 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_82 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_190
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
            (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_92 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_92 ~v0 = du_DecEq'45'GovRole_92
du_DecEq'45'GovRole_92 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_92
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_912
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
d_PParams_298 a0 = ()
-- _.PParamsOf
d_PParamsOf_302 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_448 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_PParamsOf_302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_456
      (coe v0)
-- _.ScriptHash
d_ScriptHash_346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_346 = erased
-- _.Slot
d_Slot_390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_390 = erased
-- _.Tx
d_Tx_416 a0 = ()
-- _.TxBody
d_TxBody_418 a0 = ()
-- _.UTxOOf
d_UTxOOf_434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_2938 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_2946
      (coe v0)
-- _.Voter
d_Voter_456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Voter_456 = erased
-- _.epoch
d_epoch_490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_490 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1578
         (coe v0))
-- _.GovActionState.action
d_action_730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808
d_action_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_906
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  AgdaAny
d_expiresIn_732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_904
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  AgdaAny
d_prevAction_734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_908
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98
d_returnAddr_736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_902
      (coe v0)
-- _.GovActionState.votes
d_votes_738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_900
      (coe v0)
-- _.GovActions.GovActionState
d_GovActionState_780 a0 = ()
-- _.GovActions.GovProposal
d_GovProposal_784 a0 = ()
-- _.GovActions.GovRole
d_GovRole_786 a0 = ()
-- _.GovActions.GovVote
d_GovVote_788 a0 = ()
-- _.GovActions.GovProposal.action
d_action_846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808
d_action_846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_876
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_780
d_anchor_848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_886
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  Integer
d_deposit_850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_882
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  Maybe AgdaAny
d_policy_852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_880
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  AgdaAny
d_prevAction_854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_878
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98
d_returnAddr_856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_884
      (coe v0)
-- _.GovActions.GovVote.anchor
d_anchor_868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_780
d_anchor_868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_860
      (coe v0)
-- _.GovActions.GovVote.gid
d_gid_870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_854
      (coe v0)
-- _.GovActions.GovVote.vote
d_vote_872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_836
d_vote_872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_858
      (coe v0)
-- _.GovActions.GovVote.voter
d_voter_874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_856
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_918 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_448 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_PParamsOf_918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_456
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_2938 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_2946
      (coe v0)
-- _.PParams.Emax
d_Emax_1046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_Emax_1046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_418
      (coe v0)
-- _.PParams.a
d_a_1048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_a_1048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_390 (coe v0)
-- _.PParams.a0
d_a0_1050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_422 (coe v0)
-- _.PParams.b
d_b_1052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_b_1052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_392 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_ccMaxTermLength_1054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_434
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_ccMinSize_1056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_432
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_coinsPerUTxOByte_1058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_402
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_collateralPercentage_1060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_424
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_costmdls_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_426
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_drepActivity_1064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_442
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_drepDeposit_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_440
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_238
d_drepThresholds_1068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_430
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_govActionDeposit_1070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_438
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_govActionLifetime_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_436
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_keyDeposit_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_394
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_maxBlockExUnits_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_382
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxBlockSize_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_374
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1080 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxCollateralInputs_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_386
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxHeaderSize_1082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_378
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxRefScriptSizePerBlock_1084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_410
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxRefScriptSizePerTx_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_408
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_maxTxExUnits_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_380
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxTxSize_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_376
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxValSize_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_384
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_406
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_minUTxOValue_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_416
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_398
      (coe v0)
-- _.PParams.nopt
d_nopt_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_nopt_1100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_420
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_poolDeposit_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_396
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_280
d_poolThresholds_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_428
      (coe v0)
-- _.PParams.prices
d_prices_1106 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_prices_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_404
      (coe v0)
-- _.PParams.pv
d_pv_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_388 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_414
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_412
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_400
      (coe v0)
-- _.Tx.body
d_body_1528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952
d_body_1528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
      (coe v0)
-- _.Tx.isValid
d_isValid_1530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Bool
d_isValid_1530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3158
      (coe v0)
-- _.Tx.txAD
d_txAD_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Maybe AgdaAny
d_txAD_1532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3160
      (coe v0)
-- _.Tx.txsize
d_txsize_1534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Integer
d_txsize_1534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3156
      (coe v0)
-- _.Tx.wits
d_wits_1536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3120
d_wits_1536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
      (coe v0)
-- _.TxBody.collateral
d_collateral_1540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3024
      (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Maybe Integer
d_curTreasury_1542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_curTreasury_3020
      (coe v0)
-- _.TxBody.mint
d_mint_1544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  AgdaAny
d_mint_1544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3000
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2994
      (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [AgdaAny]
d_reqSigHash_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSigHash_3026
      (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Maybe AgdaAny
d_scriptIntHash_1550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntHash_3028
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Maybe AgdaAny
d_txADhash_1552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3016
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Maybe AgdaAny
d_txNetworkId_1554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3018
      (coe v0)
-- _.TxBody.txcerts
d_txcerts_1556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
d_txcerts_1556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_3004
      (coe v0)
-- _.TxBody.txdonation
d_txdonation_1558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Integer
d_txdonation_1558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdonation_3012
      (coe v0)
-- _.TxBody.txfee
d_txfee_1560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Integer
d_txfee_1560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txfee_2998
      (coe v0)
-- _.TxBody.txid
d_txid_1562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  AgdaAny
d_txid_1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3022
      (coe v0)
-- _.TxBody.txins
d_txins_1564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2992
      (coe v0)
-- _.TxBody.txouts
d_txouts_1566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_2996
      (coe v0)
-- _.TxBody.txprop
d_txprop_1568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862]
d_txprop_1568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txprop_3010
      (coe v0)
-- _.TxBody.txup
d_txup_1570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txup_3014
      (coe v0)
-- _.TxBody.txvldt
d_txvldt_1572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvldt_3002
      (coe v0)
-- _.TxBody.txvote
d_txvote_1574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844]
d_txvote_1574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3008
      (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3006
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState
d_EnactState_1642 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.EnactState.cc
d_cc_1686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_960 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.constitution
d_constitution_1688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_962
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pparams
d_pparams_1690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_966
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pv
d_pv_1692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_964 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.withdrawals
d_withdrawals_1694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_968
      (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_GovEnv_2170 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1704 = erased
-- Ledger.Conway.Specification.Ledger._.GovState
d_GovState_1716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  ()
d_GovState_1716 = erased
-- Ledger.Conway.Specification.Ledger._.GovStateOf
d_GovStateOf_1718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2156 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2164
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1720 ~v0 ~v1 = du_HasCast'45'GovEnv_1720
du_HasCast'45'GovEnv_1720 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1720
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.du_HasCast'45'GovEnv_2200
-- Ledger.Conway.Specification.Ledger._.HasGovState
d_HasGovState_1722 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGovState.GovStateOf
d_GovStateOf_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2156 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2164
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_1842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_1842 ~v0 ~v1 = du_HasCast'45'UTxOEnv_1842
du_HasCast'45'UTxOEnv_1842 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_1842
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOEnv_2108
-- Ledger.Conway.Specification.Ledger._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_954
d_HasDeposits'45'UTxOState_1850 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_1850
du_HasDeposits'45'UTxOState_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_954
du_HasDeposits'45'UTxOState_1850
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2104
-- Ledger.Conway.Specification.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_2938
d_HasUTxO'45'UTxOState_1854 ~v0 ~v1 = du_HasUTxO'45'UTxOState_1854
du_HasUTxO'45'UTxOState_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_2938
du_HasUTxO'45'UTxOState_1854
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2106
-- Ledger.Conway.Specification.Ledger._.HasUTxOState
d_HasUTxOState_1856 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOState
d_UTxOState_1874 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOStateOf
d_UTxOStateOf_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2090 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
d_UTxOStateOf_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2098
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_1966 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2090 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
d_UTxOStateOf_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2098
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.deposits
d_deposits_1978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2080
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.donations
d_donations_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  Integer
d_donations_1980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2082
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.fees
d_fees_1982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  Integer
d_fees_1982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2078 (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.utxo
d_utxo_1984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076 (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2018 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2070 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1064 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2070 = erased
-- Ledger.Conway.Specification.Ledger._.CertState
d_CertState_2090 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.CertStateOf
d_CertStateOf_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1242 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222
d_CertStateOf_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1250
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DepositsOf
d_DepositsOf_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_954 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_962
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2138 ~v0 ~v1 = du_HasCast'45'CertEnv_2138
du_HasCast'45'CertEnv_2138 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2138
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1292
-- Ledger.Conway.Specification.Ledger._.HasCertState
d_HasCertState_2150 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDeposits
d_HasDeposits_2164 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.CertState.dState
d_dState_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1106
d_dState_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1230
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.gState
d_gState_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1190
d_gState_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1234
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.pState
d_pState_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1162
d_pState_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1232
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCertState.CertStateOf
d_CertStateOf_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1242 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222
d_CertStateOf_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1250
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDeposits.DepositsOf
d_DepositsOf_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_954 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_962
      (coe v0)
-- Ledger.Conway.Specification.Ledger.LEnv
d_LEnv_2394 a0 a1 = ()
data T_LEnv_2394
  = C_LEnv'46'constructor_6369 AgdaAny (Maybe AgdaAny)
                               MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
                               MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
                               Integer
-- Ledger.Conway.Specification.Ledger.LEnv.slot
d_slot_2406 :: T_LEnv_2394 -> AgdaAny
d_slot_2406 v0
  = case coe v0 of
      C_LEnv'46'constructor_6369 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.ppolicy
d_ppolicy_2408 :: T_LEnv_2394 -> Maybe AgdaAny
d_ppolicy_2408 v0
  = case coe v0 of
      C_LEnv'46'constructor_6369 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.pparams
d_pparams_2410 ::
  T_LEnv_2394 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_2410 v0
  = case coe v0 of
      C_LEnv'46'constructor_6369 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.enactState
d_enactState_2412 ::
  T_LEnv_2394 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
d_enactState_2412 v0
  = case coe v0 of
      C_LEnv'46'constructor_6369 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.treasury
d_treasury_2414 :: T_LEnv_2394 -> Integer
d_treasury_2414 v0
  = case coe v0 of
      C_LEnv'46'constructor_6369 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasPParams-LEnv
d_HasPParams'45'LEnv_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_448
d_HasPParams'45'LEnv_2416 ~v0 ~v1 = du_HasPParams'45'LEnv_2416
du_HasPParams'45'LEnv_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_448
du_HasPParams'45'LEnv_2416
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_HasPParams'46'constructor_9725
      (coe (\ v0 -> d_pparams_2410 (coe v0)))
-- Ledger.Conway.Specification.Ledger.LState
d_LState_2418 a0 a1 = ()
data T_LState_2418
  = C_'10214'_'44'_'44'_'10215''737'_2432 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222
-- Ledger.Conway.Specification.Ledger.LState.utxoSt
d_utxoSt_2426 ::
  T_LState_2418 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
d_utxoSt_2426 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2432 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.govSt
d_govSt_2428 ::
  T_LState_2418 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2428 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2432 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.certState
d_certState_2430 ::
  T_LState_2418 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222
d_certState_2430 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2432 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasLState
d_HasLState_2438 a0 a1 a2 a3 = ()
newtype T_HasLState_2438
  = C_HasLState'46'constructor_6765 (AgdaAny -> T_LState_2418)
-- Ledger.Conway.Specification.Ledger.HasLState.LStateOf
d_LStateOf_2446 :: T_HasLState_2438 -> AgdaAny -> T_LState_2418
d_LStateOf_2446 v0
  = case coe v0 of
      C_HasLState'46'constructor_6765 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger._.LStateOf
d_LStateOf_2450 :: T_HasLState_2438 -> AgdaAny -> T_LState_2418
d_LStateOf_2450 v0 = coe d_LStateOf_2446 (coe v0)
-- Ledger.Conway.Specification.Ledger.HasUTxOState-LState
d_HasUTxOState'45'LState_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2090
d_HasUTxOState'45'LState_2452 ~v0 ~v1
  = du_HasUTxOState'45'LState_2452
du_HasUTxOState'45'LState_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2090
du_HasUTxOState'45'LState_2452
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_HasUTxOState'46'constructor_6515
      (coe (\ v0 -> d_utxoSt_2426 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasUTxO-LState
d_HasUTxO'45'LState_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_2938
d_HasUTxO'45'LState_2454 ~v0 ~v1 = du_HasUTxO'45'LState_2454
du_HasUTxO'45'LState_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_2938
du_HasUTxO'45'LState_2454
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_HasUTxO'46'constructor_18355
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_2946
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2106)
              (d_utxoSt_2426 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasGovState-LState
d_HasGovState'45'LState_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2156
d_HasGovState'45'LState_2456 ~v0 ~v1
  = du_HasGovState'45'LState_2456
du_HasGovState'45'LState_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2156
du_HasGovState'45'LState_2456
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.C_HasGovState'46'constructor_4401
      (coe (\ v0 -> d_govSt_2428 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasCertState-LState
d_HasCertState'45'LState_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1242
d_HasCertState'45'LState_2458 ~v0 ~v1
  = du_HasCertState'45'LState_2458
du_HasCertState'45'LState_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1242
du_HasCertState'45'LState_2458
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_HasCertState'46'constructor_20043
      (coe (\ v0 -> d_certState_2430 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasDeposits-LState
d_HasDeposits'45'LState_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_954
d_HasDeposits'45'LState_2460 ~v0 ~v1
  = du_HasDeposits'45'LState_2460
du_HasDeposits'45'LState_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_954
du_HasDeposits'45'LState_2460
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_HasDeposits'46'constructor_3071
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_962
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2104)
              (d_utxoSt_2426 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasCast-LEnv
d_HasCast'45'LEnv_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2462 ~v0 ~v1 = du_HasCast'45'LEnv_2462
du_HasCast'45'LEnv_2462 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2462
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
                                 (2394 :: Integer) (11007941034284287304 :: Integer)
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
                                 (390 :: Integer) (11007941034284287304 :: Integer) "_.Slot"
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
                                    (2394 :: Integer) (11007941034284287304 :: Integer)
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
                                                (346 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2394 :: Integer) (11007941034284287304 :: Integer)
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
                                       (298 :: Integer) (11007941034284287304 :: Integer)
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
                                          (2394 :: Integer) (11007941034284287304 :: Integer)
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
                                          (1642 :: Integer) (11007941034284287304 :: Integer)
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
                                             (2394 :: Integer) (11007941034284287304 :: Integer)
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
         (coe C_LEnv'46'constructor_6369))
-- Ledger.Conway.Specification.Ledger.HasCast-LState
d_HasCast'45'LState_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2464 ~v0 ~v1 = du_HasCast'45'LState_2464
du_HasCast'45'LState_2464 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2464
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
                                 (2418 :: Integer) (11007941034284287304 :: Integer)
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
                                 (1874 :: Integer) (11007941034284287304 :: Integer)
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
                                    (2418 :: Integer) (11007941034284287304 :: Integer)
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
                                    (1716 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2418 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2090 :: Integer) (11007941034284287304 :: Integer)
                                       "Ledger.Conway.Specification.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2432))
-- Ledger.Conway.Specification.Ledger.txgov
d_txgov_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2466 ~v0 ~v1 v2 = du_txgov_2466 v2
du_txgov_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2466 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txprop_3010
            (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3008
            (coe v0)))
-- Ledger.Conway.Specification.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2514 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2514 v0 v2 v3
du_rmOrphanDRepVotes_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2514 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_go_2530 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Conway.Specification.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_ifDRepRegistered_2524 = erased
-- Ledger.Conway.Specification.Ledger._.go
d_go_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888
d_go_2530 v0 ~v1 v2 ~v3 v4 = du_go_2530 v0 v2 v4
du_go_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888
du_go_2530 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_GovActionState'46'constructor_5293
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_912)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_764))
              (coe
                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_190
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                          (coe v0))))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_548
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1470
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1196
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1234
                          (coe v1))))))
         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_900
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_902
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_904
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_906
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_908
         (coe v2))
-- Ledger.Conway.Specification.Ledger.allColdCreds
d_allColdCreds_2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2534 ~v0 ~v1 v2 v3 = du_allColdCreds_2534 v2 v3
du_allColdCreds_2534 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2534 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_994
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_960 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_924
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_906
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2576 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2576
  = C_LEDGER'45'V_2622 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2624 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ledger._.txcerts
d_txcerts_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_18199 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
d_txcerts_2598 ~v0 ~v1 v2 = du_txcerts_2598 v2
du_txcerts_2598 ::
  T_GeneralizeTel_18199 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
du_txcerts_2598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_3004
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_18175 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txid
d_txid_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_18199 -> AgdaAny
d_txid_2604 ~v0 ~v1 v2 = du_txid_2604 v2
du_txid_2604 :: T_GeneralizeTel_18199 -> AgdaAny
du_txid_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3022
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_18175 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txvote
d_txvote_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_18199 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844]
d_txvote_2616 ~v0 ~v1 v2 = du_txvote_2616 v2
du_txvote_2616 ::
  T_GeneralizeTel_18199 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844]
du_txvote_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3008
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_18175 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txwdrls
d_txwdrls_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_18199 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2618 ~v0 ~v1 v2 = du_txwdrls_2618 v2
du_txwdrls_2618 ::
  T_GeneralizeTel_18199 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3006
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_18175 (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_LEnv_2394 ->
  T_LState_2418 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140] ->
  T_LState_2418 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2642 = erased
-- Ledger.Conway.Specification.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_18175 ::
  T_GeneralizeTel_18199 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140
d_'46'generalizedField'45'tx_18175 v0
  = case coe v0 of
      C_mkGeneralizeTel_18201 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_18177 ::
  T_GeneralizeTel_18199 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222
d_'46'generalizedField'45'certState_18177 v0
  = case coe v0 of
      C_mkGeneralizeTel_18201 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_18179 ::
  T_GeneralizeTel_18199 -> AgdaAny
d_'46'generalizedField'45'slot_18179 v0
  = case coe v0 of
      C_mkGeneralizeTel_18201 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_18181 ::
  T_GeneralizeTel_18199 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_'46'generalizedField'45'pp_18181 v0
  = case coe v0 of
      C_mkGeneralizeTel_18201 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_18183 ::
  T_GeneralizeTel_18199 -> Integer
d_'46'generalizedField'45'treasury_18183 v0
  = case coe v0 of
      C_mkGeneralizeTel_18201 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_18185 ::
  T_GeneralizeTel_18199 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
d_'46'generalizedField'45'utxoSt_18185 v0
  = case coe v0 of
      C_mkGeneralizeTel_18201 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_18187 ::
  T_GeneralizeTel_18199 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
d_'46'generalizedField'45'utxoSt''_18187 v0
  = case coe v0 of
      C_mkGeneralizeTel_18201 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_18189 ::
  T_GeneralizeTel_18199 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_18189 v0
  = case coe v0 of
      C_mkGeneralizeTel_18201 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_18191 ::
  T_GeneralizeTel_18199 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
d_'46'generalizedField'45'enactState_18191 v0
  = case coe v0 of
      C_mkGeneralizeTel_18201 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_18193 ::
  T_GeneralizeTel_18199 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222
d_'46'generalizedField'45'certState''_18193 v0
  = case coe v0 of
      C_mkGeneralizeTel_18201 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_18195 ::
  T_GeneralizeTel_18199 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_18195 v0
  = case coe v0 of
      C_mkGeneralizeTel_18201 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_18197 ::
  T_GeneralizeTel_18199 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_18197 v0
  = case coe v0 of
      C_mkGeneralizeTel_18201 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.GeneralizeTel
d_GeneralizeTel_18199 a0 a1 = ()
data T_GeneralizeTel_18199
  = C_mkGeneralizeTel_18201 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222
                            AgdaAny
                            MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
                            Integer
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222
                            (Maybe AgdaAny) [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
