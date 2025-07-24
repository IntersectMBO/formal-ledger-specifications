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
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1270
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1270
            (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_92 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_92 ~v0 = du_DecEq'45'GovRole_92
du_DecEq'45'GovRole_92 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_92
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_908
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
d_PParams_294 a0 = ()
-- _.PParamsOf
d_PParamsOf_298 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298
d_PParamsOf_298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_452
      (coe v0)
-- _.ScriptHash
d_ScriptHash_342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_342 = erased
-- _.Slot
d_Slot_386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_386 = erased
-- _.Tx
d_Tx_412 a0 = ()
-- _.TxBody
d_TxBody_414 a0 = ()
-- _.UTxOOf
d_UTxOOf_430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_2930 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_2938
      (coe v0)
-- _.Voter
d_Voter_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Voter_452 = erased
-- _.epoch
d_epoch_486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_486 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1574
         (coe v0))
-- _.GovActionState.action
d_action_726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_884 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_804
d_action_726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_902
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_884 ->
  AgdaAny
d_expiresIn_728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_900
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_884 ->
  AgdaAny
d_prevAction_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_904
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_884 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98
d_returnAddr_732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_898
      (coe v0)
-- _.GovActionState.votes
d_votes_734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_896
      (coe v0)
-- _.GovActions.GovActionState
d_GovActionState_776 a0 = ()
-- _.GovActions.GovProposal
d_GovProposal_780 a0 = ()
-- _.GovActions.GovRole
d_GovRole_782 a0 = ()
-- _.GovActions.GovVote
d_GovVote_784 a0 = ()
-- _.GovActions.GovProposal.action
d_action_842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_804
d_action_842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_872
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_776
d_anchor_844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_882
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_858 ->
  Integer
d_deposit_846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_878
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_858 ->
  Maybe AgdaAny
d_policy_848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_876
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_858 ->
  AgdaAny
d_prevAction_850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_874
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_858 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98
d_returnAddr_852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_880
      (coe v0)
-- _.GovActions.GovVote.anchor
d_anchor_864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_840 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_776
d_anchor_864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_856
      (coe v0)
-- _.GovActions.GovVote.gid
d_gid_866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_840 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_850
      (coe v0)
-- _.GovActions.GovVote.vote
d_vote_868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_840 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_832
d_vote_868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_854
      (coe v0)
-- _.GovActions.GovVote.voter
d_voter_870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_840 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_852
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_914 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298
d_PParamsOf_914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_452
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_2930 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_2938
      (coe v0)
-- _.PParams.Emax
d_Emax_1042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  AgdaAny
d_Emax_1042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_414
      (coe v0)
-- _.PParams.a
d_a_1044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_a_1044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_386 (coe v0)
-- _.PParams.a0
d_a0_1046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_418 (coe v0)
-- _.PParams.b
d_b_1048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_b_1048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_388 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_ccMaxTermLength_1050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_430
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_ccMinSize_1052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_428
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_coinsPerUTxOByte_1054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_398
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_collateralPercentage_1056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_420
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  AgdaAny
d_costmdls_1058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_422
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  AgdaAny
d_drepActivity_1060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_438
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_drepDeposit_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_436
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_234
d_drepThresholds_1064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_426
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_govActionDeposit_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_434
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_govActionLifetime_1068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_432
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_keyDeposit_1070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_390
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  AgdaAny
d_maxBlockExUnits_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_378
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_maxBlockSize_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_370
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_maxCollateralInputs_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_382
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_maxHeaderSize_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_374
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1080 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_maxRefScriptSizePerBlock_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_406
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_maxRefScriptSizePerTx_1082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_404
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  AgdaAny
d_maxTxExUnits_1084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_376
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_maxTxSize_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_372
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_maxValSize_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_380
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_402
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_minUTxOValue_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_412
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_394
      (coe v0)
-- _.PParams.nopt
d_nopt_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_nopt_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_416
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  Integer
d_poolDeposit_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_392
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_276
d_poolThresholds_1100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_424
      (coe v0)
-- _.PParams.prices
d_prices_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  AgdaAny
d_prices_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_400
      (coe v0)
-- _.PParams.pv
d_pv_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_384 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1106 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_410
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_408
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_396
      (coe v0)
-- _.Tx.body
d_body_1524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944
d_body_1524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
      (coe v0)
-- _.Tx.isValid
d_isValid_1526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132 ->
  Bool
d_isValid_1526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3150
      (coe v0)
-- _.Tx.txAD
d_txAD_1528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132 ->
  Maybe AgdaAny
d_txAD_1528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3152
      (coe v0)
-- _.Tx.txsize
d_txsize_1530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132 ->
  Integer
d_txsize_1530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3148
      (coe v0)
-- _.Tx.wits
d_wits_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3112
d_wits_1532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3146
      (coe v0)
-- _.TxBody.collateral
d_collateral_1536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3016
      (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  Maybe Integer
d_curTreasury_1538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_curTreasury_3012
      (coe v0)
-- _.TxBody.mint
d_mint_1540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  AgdaAny
d_mint_1540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_2992
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2986
      (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  [AgdaAny]
d_reqSigHash_1544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSigHash_3018
      (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  Maybe AgdaAny
d_scriptIntHash_1546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntHash_3020
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  Maybe AgdaAny
d_txADhash_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3008
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  Maybe AgdaAny
d_txNetworkId_1550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3010
      (coe v0)
-- _.TxBody.txcerts
d_txcerts_1552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1024]
d_txcerts_1552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_2996
      (coe v0)
-- _.TxBody.txdonation
d_txdonation_1554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  Integer
d_txdonation_1554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdonation_3004
      (coe v0)
-- _.TxBody.txfee
d_txfee_1556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  Integer
d_txfee_1556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txfee_2990
      (coe v0)
-- _.TxBody.txid
d_txid_1558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  AgdaAny
d_txid_1558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3014
      (coe v0)
-- _.TxBody.txins
d_txins_1560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2984
      (coe v0)
-- _.TxBody.txouts
d_txouts_1562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_2988
      (coe v0)
-- _.TxBody.txprop
d_txprop_1564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_858]
d_txprop_1564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txprop_3002
      (coe v0)
-- _.TxBody.txup
d_txup_1566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txup_3006
      (coe v0)
-- _.TxBody.txvldt
d_txvldt_1568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvldt_2994
      (coe v0)
-- _.TxBody.txvote
d_txvote_1570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_840]
d_txvote_1570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3000
      (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_2998
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState
d_EnactState_1638 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.EnactState.cc
d_cc_1682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_956 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.constitution
d_constitution_1684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_958
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pparams
d_pparams_1686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_962
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pv
d_pv_1688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_960 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.withdrawals
d_withdrawals_1690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_964
      (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_GovEnv_2166 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1700 = erased
-- Ledger.Conway.Specification.Ledger._.GovState
d_GovState_1712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  ()
d_GovState_1712 = erased
-- Ledger.Conway.Specification.Ledger._.GovStateOf
d_GovStateOf_1714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2152 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2160
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1716 ~v0 ~v1 = du_HasCast'45'GovEnv_1716
du_HasCast'45'GovEnv_1716 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1716
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.du_HasCast'45'GovEnv_2196
-- Ledger.Conway.Specification.Ledger._.HasGovState
d_HasGovState_1718 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGovState.GovStateOf
d_GovStateOf_1818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2152 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2160
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_1838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_1838 ~v0 ~v1 = du_HasCast'45'UTxOEnv_1838
du_HasCast'45'UTxOEnv_1838 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_1838
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOEnv_2104
-- Ledger.Conway.Specification.Ledger._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_1846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_950
d_HasDeposits'45'UTxOState_1846 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_1846
du_HasDeposits'45'UTxOState_1846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_950
du_HasDeposits'45'UTxOState_1846
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2100
-- Ledger.Conway.Specification.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_2930
d_HasUTxO'45'UTxOState_1850 ~v0 ~v1 = du_HasUTxO'45'UTxOState_1850
du_HasUTxO'45'UTxOState_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_2930
du_HasUTxO'45'UTxOState_1850
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2102
-- Ledger.Conway.Specification.Ledger._.HasUTxOState
d_HasUTxOState_1852 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOState
d_UTxOState_1870 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOStateOf
d_UTxOStateOf_1872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2086 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062
d_UTxOStateOf_1872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2094
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2086 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062
d_UTxOStateOf_1962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2094
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.deposits
d_deposits_1974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2076
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.donations
d_donations_1976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  Integer
d_donations_1976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2078
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.fees
d_fees_1978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  Integer
d_fees_1978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2074 (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.utxo
d_utxo_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072 (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2014 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1060 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1024] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2066 = erased
-- Ledger.Conway.Specification.Ledger._.CertState
d_CertState_2086 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.CertStateOf
d_CertStateOf_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1238 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218
d_CertStateOf_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1246
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DepositsOf
d_DepositsOf_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_950 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_958
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2134 ~v0 ~v1 = du_HasCast'45'CertEnv_2134
du_HasCast'45'CertEnv_2134 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2134
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1288
-- Ledger.Conway.Specification.Ledger._.HasCertState
d_HasCertState_2146 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDeposits
d_HasDeposits_2160 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.CertState.dState
d_dState_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1102
d_dState_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1226
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.gState
d_gState_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1186
d_gState_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1230
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.pState
d_pState_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1158
d_pState_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1228
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCertState.CertStateOf
d_CertStateOf_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1238 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218
d_CertStateOf_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1246
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDeposits.DepositsOf
d_DepositsOf_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_950 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_958
      (coe v0)
-- Ledger.Conway.Specification.Ledger.LEnv
d_LEnv_2390 a0 a1 = ()
data T_LEnv_2390
  = C_LEnv'46'constructor_6337 AgdaAny (Maybe AgdaAny)
                               MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298
                               MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_944
                               Integer
-- Ledger.Conway.Specification.Ledger.LEnv.slot
d_slot_2402 :: T_LEnv_2390 -> AgdaAny
d_slot_2402 v0
  = case coe v0 of
      C_LEnv'46'constructor_6337 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.ppolicy
d_ppolicy_2404 :: T_LEnv_2390 -> Maybe AgdaAny
d_ppolicy_2404 v0
  = case coe v0 of
      C_LEnv'46'constructor_6337 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.pparams
d_pparams_2406 ::
  T_LEnv_2390 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298
d_pparams_2406 v0
  = case coe v0 of
      C_LEnv'46'constructor_6337 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.enactState
d_enactState_2408 ::
  T_LEnv_2390 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_944
d_enactState_2408 v0
  = case coe v0 of
      C_LEnv'46'constructor_6337 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.treasury
d_treasury_2410 :: T_LEnv_2390 -> Integer
d_treasury_2410 v0
  = case coe v0 of
      C_LEnv'46'constructor_6337 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasPParams-LEnv
d_HasPParams'45'LEnv_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444
d_HasPParams'45'LEnv_2412 ~v0 ~v1 = du_HasPParams'45'LEnv_2412
du_HasPParams'45'LEnv_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444
du_HasPParams'45'LEnv_2412
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_HasPParams'46'constructor_9433
      (coe (\ v0 -> d_pparams_2406 (coe v0)))
-- Ledger.Conway.Specification.Ledger.LState
d_LState_2414 a0 a1 = ()
data T_LState_2414
  = C_'10214'_'44'_'44'_'10215''737'_2428 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218
-- Ledger.Conway.Specification.Ledger.LState.utxoSt
d_utxoSt_2422 ::
  T_LState_2414 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062
d_utxoSt_2422 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2428 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.govSt
d_govSt_2424 ::
  T_LState_2414 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2424 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2428 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.certState
d_certState_2426 ::
  T_LState_2414 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218
d_certState_2426 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2428 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasLState
d_HasLState_2434 a0 a1 a2 a3 = ()
newtype T_HasLState_2434
  = C_HasLState'46'constructor_6733 (AgdaAny -> T_LState_2414)
-- Ledger.Conway.Specification.Ledger.HasLState.LStateOf
d_LStateOf_2442 :: T_HasLState_2434 -> AgdaAny -> T_LState_2414
d_LStateOf_2442 v0
  = case coe v0 of
      C_HasLState'46'constructor_6733 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger._.LStateOf
d_LStateOf_2446 :: T_HasLState_2434 -> AgdaAny -> T_LState_2414
d_LStateOf_2446 v0 = coe d_LStateOf_2442 (coe v0)
-- Ledger.Conway.Specification.Ledger.HasUTxOState-LState
d_HasUTxOState'45'LState_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2086
d_HasUTxOState'45'LState_2448 ~v0 ~v1
  = du_HasUTxOState'45'LState_2448
du_HasUTxOState'45'LState_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2086
du_HasUTxOState'45'LState_2448
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_HasUTxOState'46'constructor_6483
      (coe (\ v0 -> d_utxoSt_2422 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasUTxO-LState
d_HasUTxO'45'LState_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_2930
d_HasUTxO'45'LState_2450 ~v0 ~v1 = du_HasUTxO'45'LState_2450
du_HasUTxO'45'LState_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_2930
du_HasUTxO'45'LState_2450
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_HasUTxO'46'constructor_18291
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_2938
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2102)
              (d_utxoSt_2422 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasGovState-LState
d_HasGovState'45'LState_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2152
d_HasGovState'45'LState_2452 ~v0 ~v1
  = du_HasGovState'45'LState_2452
du_HasGovState'45'LState_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2152
du_HasGovState'45'LState_2452
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.C_HasGovState'46'constructor_4369
      (coe (\ v0 -> d_govSt_2424 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasCertState-LState
d_HasCertState'45'LState_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1238
d_HasCertState'45'LState_2454 ~v0 ~v1
  = du_HasCertState'45'LState_2454
du_HasCertState'45'LState_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1238
du_HasCertState'45'LState_2454
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_HasCertState'46'constructor_20011
      (coe (\ v0 -> d_certState_2426 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasDeposits-LState
d_HasDeposits'45'LState_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_950
d_HasDeposits'45'LState_2456 ~v0 ~v1
  = du_HasDeposits'45'LState_2456
du_HasDeposits'45'LState_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_950
du_HasDeposits'45'LState_2456
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_HasDeposits'46'constructor_3039
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_958
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2100)
              (d_utxoSt_2422 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasCast-LEnv
d_HasCast'45'LEnv_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2458 ~v0 ~v1 = du_HasCast'45'LEnv_2458
du_HasCast'45'LEnv_2458 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2458
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
                                 (2390 :: Integer) (11007941034284287304 :: Integer)
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
                                 (386 :: Integer) (11007941034284287304 :: Integer) "_.Slot"
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
                                    (2390 :: Integer) (11007941034284287304 :: Integer)
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
                                                (342 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2390 :: Integer) (11007941034284287304 :: Integer)
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
                                       (294 :: Integer) (11007941034284287304 :: Integer)
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
                                          (2390 :: Integer) (11007941034284287304 :: Integer)
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
                                          (1638 :: Integer) (11007941034284287304 :: Integer)
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
                                             (2390 :: Integer) (11007941034284287304 :: Integer)
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
         (coe C_LEnv'46'constructor_6337))
-- Ledger.Conway.Specification.Ledger.HasCast-LState
d_HasCast'45'LState_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2460 ~v0 ~v1 = du_HasCast'45'LState_2460
du_HasCast'45'LState_2460 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2460
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
                                 (2414 :: Integer) (11007941034284287304 :: Integer)
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
                                 (1870 :: Integer) (11007941034284287304 :: Integer)
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
                                    (2414 :: Integer) (11007941034284287304 :: Integer)
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
                                    (1712 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2414 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2086 :: Integer) (11007941034284287304 :: Integer)
                                       "Ledger.Conway.Specification.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2428))
-- Ledger.Conway.Specification.Ledger.txgov
d_txgov_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2462 ~v0 ~v1 v2 = du_txgov_2462 v2
du_txgov_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2462 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txprop_3002
            (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3000
            (coe v0)))
-- Ledger.Conway.Specification.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2510 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2510 v0 v2 v3
du_rmOrphanDRepVotes_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2510 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
         (coe du_go_2526 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Conway.Specification.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_ifDRepRegistered_2520 = erased
-- Ledger.Conway.Specification.Ledger._.go
d_go_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_884 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_884
d_go_2526 v0 ~v1 v2 ~v3 v4 = du_go_2526 v0 v2 v4
du_go_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_884 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_884
du_go_2526 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_GovActionState'46'constructor_5261
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1176
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_908)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_760))
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
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1270
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1270
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
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1192
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1230
                          (coe v1))))))
         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_896
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_898
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_900
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_902
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_904
         (coe v2))
-- Ledger.Conway.Specification.Ledger.allColdCreds
d_allColdCreds_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_944 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2530 ~v0 ~v1 v2 v3 = du_allColdCreds_2530 v2 v3
du_allColdCreds_2530 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_944 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2530 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_990
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_956 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_920
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_902
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2572 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2572
  = C_LEDGER'45'V_2618 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2620 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ledger._.txcerts
d_txcerts_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  T_GeneralizeTel_18167 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1024]
d_txcerts_2594 ~v0 ~v1 v2 = du_txcerts_2594 v2
du_txcerts_2594 ::
  T_GeneralizeTel_18167 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1024]
du_txcerts_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_2996
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_18143 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txid
d_txid_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  T_GeneralizeTel_18167 -> AgdaAny
d_txid_2600 ~v0 ~v1 v2 = du_txid_2600 v2
du_txid_2600 :: T_GeneralizeTel_18167 -> AgdaAny
du_txid_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3014
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_18143 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txvote
d_txvote_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  T_GeneralizeTel_18167 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_840]
d_txvote_2612 ~v0 ~v1 v2 = du_txvote_2612 v2
du_txvote_2612 ::
  T_GeneralizeTel_18167 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_840]
du_txvote_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3000
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_18143 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txwdrls
d_txwdrls_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  T_GeneralizeTel_18167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2614 ~v0 ~v1 v2 = du_txwdrls_2614 v2
du_txwdrls_2614 ::
  T_GeneralizeTel_18167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_2998
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
         (coe d_'46'generalizedField'45'tx_18143 (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  T_LEnv_2390 ->
  T_LState_2414 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132] ->
  T_LState_2414 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2638 = erased
-- Ledger.Conway.Specification.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_18143 ::
  T_GeneralizeTel_18167 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132
d_'46'generalizedField'45'tx_18143 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_18145 ::
  T_GeneralizeTel_18167 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218
d_'46'generalizedField'45'certState_18145 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_18147 ::
  T_GeneralizeTel_18167 -> AgdaAny
d_'46'generalizedField'45'slot_18147 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_18149 ::
  T_GeneralizeTel_18167 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298
d_'46'generalizedField'45'pp_18149 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_18151 ::
  T_GeneralizeTel_18167 -> Integer
d_'46'generalizedField'45'treasury_18151 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_18153 ::
  T_GeneralizeTel_18167 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062
d_'46'generalizedField'45'utxoSt_18153 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_18155 ::
  T_GeneralizeTel_18167 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062
d_'46'generalizedField'45'utxoSt''_18155 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_18157 ::
  T_GeneralizeTel_18167 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_18157 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_18159 ::
  T_GeneralizeTel_18167 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_944
d_'46'generalizedField'45'enactState_18159 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_18161 ::
  T_GeneralizeTel_18167 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218
d_'46'generalizedField'45'certState''_18161 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_18163 ::
  T_GeneralizeTel_18167 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_18163 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_18165 ::
  T_GeneralizeTel_18167 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_18165 v0
  = case coe v0 of
      C_mkGeneralizeTel_18169 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.GeneralizeTel
d_GeneralizeTel_18167 a0 a1 = ()
data T_GeneralizeTel_18167
  = C_mkGeneralizeTel_18169 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218
                            AgdaAny
                            MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298
                            Integer
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_944
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1218
                            (Maybe AgdaAny) [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
